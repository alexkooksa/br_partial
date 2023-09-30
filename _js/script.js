var max767 = window.matchMedia("(max-width: 767px)");
var max1023 = window.matchMedia("(max-width: 1023px)");
var max1279 = window.matchMedia("(max-width: 1279px)");
var min768 = window.matchMedia("(min-width: 768px)");
var min1280 = window.matchMedia("(min-width: 1280px)");
var min1024 = window.matchMedia("(min-width: 1024px)");
var header_height = $("header").outerHeight();
var object_page_height = $(".object-page").outerHeight();


function popup(filename, title, size, scrollable) {
  $("[data-popup]").hide();
  $.get("/comments/commentsapi/get_popup/" + filename, function (res) {
    $('[data-popup-title="all"]').empty().text(title);
    $('[data-popup-body="all"]').empty().html(res);
    if (size !== undefined) {
      $(".popup-box:last").addClass(size);
    }
    $("[data-form-body]").find('[name="url"]').val(window.location.href);
    if (scrollable !== undefined) {
      $(".popup-box:last").addClass("scrollable");
    }
    if ($("[data-popup-input]").length) {
      $("[data-popup-input]").each(function () {
        var name = $(this).data("popup-input");
        var val = $(this).val();
        $('[data-popup-body="all"]')
          .find('input[name="' + name + '"]')
          .val(val);
      });
    }
    if ($("[data-popup-text]").length) {
      var ttext = $("[data-popup-text]").val();
      $("<p>" + ttext + "</p>").insertBefore($('[data-popup-body="all"] form'));
    }
    $("body").addClass("blocked");
    $(".popup-dark").addClass("visible");
    $("[data-popup]:last").fadeIn("fast");
    close_popup("[data-popup]:last");
    init_libs();
  });
}

function close_popup(target) {
  $('.popup-header .btn-close, [data-el="popup-bg"]').on("click", function (e) {
    if (e.target == this) {
      if (!$("body").hasClass("filter-opened")) {
        $("body").removeClass("blocked");
      }
      $(".popup-dark").removeClass("visible");
      $('.popup-box[data-box="' + target + '"]')
        .fadeOut("fast")
        .removeClass("successful");
    }
  });
}

function postform(el, type) {
  var dataString = $(el).serialize();
  $(el).parent().find("[data-form-body]").addClass("disabled");
  $(el).parent().find("[data-form-loader]").show();
  $.ajax({
    type: "POST",
    url: "/comments/commentsapi/send_form/" + type,
    data: dataString,
    cache: false,
    success: function (result) {
      $(el).parent().find("[data-form-loader]").hide();
      if (result != 1) {
        $(el).parent().find("[data-form-body]").removeClass("disabled");
        $(el).parent().find("[data-error]").fadeIn("fast");
        setTimeout(function () {
          $(el).parent().find("[data-error]").hide();
        }, 4000);
      } else {
        // window.location.href = "/thanks";
        $(".popup-box").addClass("successful");
        $(el).parent().find("[data-form-body]").hide();
        $(el).parent().find("[data-success]").fadeIn("fast");
      }
    },
  });
}

function set_currency(url, el) {
  var cur = $(el).val();
  window.location.href = url + "?set_currency=" + cur;
}

function responsive_input_range() {
  if (min768.matches && max1279.matches) {
    $('.homefilter [data-filter-type="input-group"] label').each(function () {
      $(this).attr("data-btn", "toggle-range");
    });
  } else {
    $('.homefilter [data-filter-type="input-group"] label').each(function () {
      $(this).removeAttr("data-btn");
    });
  }
}

function init_libs() {
  $("select:not([multiple])").niceSelect();
  $("select[multiple]").each(function () {
    var el_class =
      $(this).attr("class") !== undefined ? $(this).attr("class") : "";
    var el_nonetext =
      $(this).data("none-text") !== undefined
        ? $(this).data("none-text")
        : "не выбрано";
    $(this).multiSelect({
      // noneText: ??? == 'class' ? 'Класс' : 'Не выбрано'
      containerHTML: '<div class="multi-select-container ' + el_class + '">',
      noneText: el_nonetext,
    });
  });
  responsive_input_range();

  $('[data-radio="contact-type"] input').each(function () {
    $(this).on("change", function () {
      if (
        $('[data-radio="contact-type"] input[id="telegram"]').is(":checked")
      ) {
        $(".telegram-textbox").removeClass("hidden");
      } else {
        $(".telegram-textbox").addClass("hidden");
      }
    });
  });
}

function floating_tabs() {
  $(".floating-tabs [data-tab]").each(function () {
    $(this).on("click", function () {
      float_tab(this);
    });
  });
}

function float_tab(el) {
  $(el).parent().addClass("clicked");
  $(el).siblings().removeClass("active");
  $(el).addClass("active");
}

function lets_tabs() {
  $("[data-tab]").each(function () {
    $(this).on("click", function () {
      var tabs_target = $(this).parent().data("tabs-name");
      var target = $(this).data("tab");
      $(
        '[data-tabs-name="' +
          tabs_target +
          '"] [data-tab], [data-tabs-name="' +
          tabs_target +
          '"] [data-tab-content]'
      ).removeClass("active");
      $(this).addClass("active");
      $(
        '[data-tabs-name="' +
          tabs_target +
          '"] [data-tab-content="' +
          target +
          '"]'
      ).addClass("active");
    });
  });
}

function Scroll() {
  var wy = $(window).scrollTop();
  if (wy > 1) {
    $("body").addClass("scrolled");
  } else {
    $("body").removeClass("scrolled");
  }

  if (max767.matches) {
    if ($(".object_page").length) {
      if (wy > object_page_height) {
        $("body").find(".side-info__buttons.fixed").toggleClass("hidden");
      } else {
        $("body").find(".side-info__buttons.fixed").toggleClass("hidden");
      }
    }
  }

  if ($(".to-top").length) {
    if (wy > 700) {
      $(".to-top").fadeIn("fast");
    } else {
      $(".to-top").fadeOut("fast");
    }
  }
}

function dropdown_menu() {
  var currentItem = null;

  var showDelay = 200,
    hideDelay = 50;
  var menuEnterTimer, menuLeaveTimer;
  $(".menu-item.has-submenu").each(function () {
    $(this).on("mouseenter", function () {
      currentItem = $(this);
      clearTimeout(menuLeaveTimer);
      $(".menu-item").removeClass("current");
      $("[data-submenu]").removeClass("is-visible");

      menuEnterTimer = setTimeout(function () {
        $(currentItem)
          .addClass("current")
          .find("[data-submenu]")
          .addClass("is-visible");
        $(".header-dark-overlay").addClass("is-visible");
      }, showDelay);
    });
    $(this).on("mouseleave", function (e) {
      clearTimeout(menuEnterTimer);
      menuLeaveTimer = setTimeout(function () {
        $(currentItem)
          .removeClass("current")
          .find("[data-submenu]")
          .removeClass("is-visible");
      }, hideDelay);
    });
  });

  $(".main-menu").on("mouseleave", function () {
    setTimeout(function () {
      $(".header-dark-overlay").removeClass("is-visible");
    });
  });
}

function responsive_actions() {
  if (max767.matches) {
    setTimeout(function () {
      header_height = $("header").outerHeight();
    }, 300);

    $("body").css({ "padding-top": header_height });
    $(".top-menu").prependTo(".nav-group");
    $('[data-el="nav"], [data-submenu]').css({
      top: header_height,
      height: "calc(100vh - " + header_height + "px)",
    });
    $('[data-btn="open-submenu"]').on("click", function () {
      $(this).next("[data-submenu]").toggleClass("is-visible");
      return false;
    });
    $(".btn-submenu-back").on("click", function () {
      $(this).parent().parent("[data-submenu]").toggleClass("is-visible");
    });
  } else {
    setTimeout(function () {
      header_height = $("header").outerHeight();
    }, 300);

    $("body").css({ "padding-top": header_height });
    $('[data-el="nav"], [data-submenu]').removeAttr("style");
    $(".nav-group .top-menu").prependTo(".header-top .wrap");

    dropdown_menu();
  }
  if (max1023.matches) {
    $('[data-el="object-sidebar"]').insertAfter('[data-el="object-image"]');
  } else {
    $('[data-el="object-sidebar"]').insertAfter(".object-left");
  }

}

$(function () {
  var fitImages = document.querySelectorAll("img.object-fit, .image-fit img");
  objectFitImages(fitImages);

  init_libs();
  responsive_actions();

  // tabs start
  $(".filter-tabs [data-tab]:first").addClass("active");
  $(".content-list").each(function () {
    $(this).find("[data-tab-content]:first").addClass("active");
  });
  floating_tabs();
  lets_tabs();
  // tabs end

  $("[data-target]").on("click", function () {
    var pp = $(this).data("target");

    $("[data-popup]").hide();
    if ($('[data-popup="' + pp + '"]').length) {
      $("body").addClass("blocked");
      $(".popup-dark").addClass("visible");
      $('[data-popup="' + pp + '"]').fadeIn("fast");
      close_popup(pp);
    }
  });

  $("a[href*=#]:not([href=#])").click(function () {
    $("body").removeClass("blocked");
    $("[data-menu]").removeClass("is-visible");
    $("[data-open-menu]").removeClass("is-active");
    if (
      location.pathname.replace(/^\//, "") ==
        this.pathname.replace(/^\//, "") ||
      location.hostname == this.hostname
    ) {
      var target = $(this.hash);
      target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
      if (target.length) {
        $("html,body").animate(
          {
            scrollTop: target.offset().top - 100,
          },
          100
        );
        return false;
      }
    }
  });

  if (max767.matches) {
    $('[data-btn="open-filter"]').on("click", function () {
      $(".category-filter-outer").toggleClass("visible");
      $("body").addClass("blocked filter-opened");
    });
    $('[data-btn="close-filter"]').on("click", function () {
      $(".category-filter-outer").toggleClass("visible");
      $("body").removeClass("blocked filter-opened");
    });
  }

  $('[data-btn="toggle-range"]').on("click", function () {
    var el = $(this).next(".input-range-group");
    $(".input-range-group").not(el).removeClass("visible");
    $(el).toggleClass("visible");
  });

  $('[data-btn="close-range"]').on("click", function () {
    $(this).closest(".input-range-group").toggleClass("visible");
    refilter(1);
  });

  $('[data-btn="open-search"], [data-btn="close-search"]').on(
    "click",
    function () {
      $("body").toggleClass("blocked");
      $(".search-group").fadeToggle();
    }
  );
  $('[data-btn="open-search"]').on("click", function () {
    $(".input-search").focus();
  });

  if (max767.matches) {
    if ($(".side-info__buttons").length) {
      $(".side-info__buttons")
        .clone()
        .addClass("fixed")
        .appendTo(".object-sidebar");
    }
  }

  if (min768.matches) {
    $(".search-group").on("click", function (e) {
      if (e.target !== e.currentTarget) return;
      $("body").toggleClass("blocked");
      $(".search-group").fadeToggle();
    });
  }

  setTimeout(function () {
    $('[rows="21"]').removeAttr("required");
  }, 2000);

  if ($('[data-tooltip="category-view"]').length) {
    setTimeout(function () {
      $('[data-tooltip="category-view"]').addClass("visible");
    }, 2000);
  }
  $("[data-close-tooltip]").on("click", function () {
    $(this).parent().removeClass("visible");
    var tooltip_id = $(this).parent().data("tooltip");
    createCookie("tooltip-" + tooltip_id, "", 30);
  });

  $("header").addClass("fixed");
  $("body").css({ "padding-top": header_height });

  $('[data-btn="toggle-popover"]').on("click", function () {
    $(this).toggleClass("is-active").next(".popover").toggleClass("is-visible");
  });

  $('[data-btn="toggle-nav"]').on("click", function () {
    $(this).toggleClass("is-active");
    $('[data-el="nav"]').toggleClass("is-visible");
    $("body").toggleClass("blocked");
  });

  $('[data-btn="toggle-next"]').on("click", function () {
    $(this).toggleClass("is-active");
    $(this).next('[data-el="content"]').slideToggle("fast");
  });

  if ($.type(Swiper) === "function") {
    if ($('[data-swiper="realty-slider"]').length) {
      var target = $('[data-swiper="realty-slider"]');
      $('[data-swiper="realty-slider"]').each(function () {
        var mySwiper = new Swiper($(this), {
          slidesPerView: 2,
          spaceBetween: 16,
          watchSlidesVisibility: true,
          watchOverflow: true,
          loop: true,
          observer: true,
          observeParents: true,
          autoHeight: true,
          pagination: {
            el: $(this).parent().find(".swiper-pagination"),
            type: "bullets",
            clickable: true,
          },
          // navigation: false,
          navigation: {
            nextEl: $(this)
              .next(".swiper-navigation")
              .find(".swiper-button-next"),

            prevEl: $(this)
              .next(".swiper-navigation")
              .find(".swiper-button-prev"),
          },
          breakpoints: {
            768: {
              slidesPerView: 1,
            },
            pagination: false,
          },
        });
      });
    }

    if ($('[data-swiper="realty-item-gallery"]').length) {
      $('[data-swiper="realty-item-gallery"]').each(function () {
        var swiperRealtyItemGallery = new Swiper($(this), {
          slidesPerView: 1,
          loop: true,
          effect: "slide",
          watchOverflow: true,
          observer: true,
          observeParents: true,
          nested: true,
          autoHeight: true,
          preloadImages: false,
          lazy: {
            loadPrevNext: true,
            loadPrevNextAmount: 2,
          },
          pagination: {
            el: $(this).find(".swiper-pagination"),
            type: "bullets",
            clickable: true,
          },
          navigation: {
            nextEl: $(this)
              .find(".swiper-navigation")
              .find(".swiper-button-next"),

            prevEl: $(this)
              .find(".swiper-navigation")
              .find(".swiper-button-prev"),
          },
        });
      });
    }

    if ($('[data-swiper="clients"]').length) {
      var target = $('[data-swiper="clients"]');
      $('[data-swiper="clients"]').each(function () {
        var mySwiper = new Swiper($(this), {
          speed: 4200,
          slidesPerView: 2.5,
          spaceBetween: 24,
          watchSlidesVisibility: true,
          watchOverflow: true,
          loop: true,
          autoplay: {
            delay: 1,
            disableOnInteraction: false,
          },
          freeMode: {
            freeModeSticky: false,
            freeModeMomentumBounce: false,
            freeModeMomentum: false,
          },
          snapOnRelease: false,
          breakpointsInverse: true,
          breakpoints: {
            768: {
              slidesPerView: 4,
            },
            1024: {
              slidesPerView: 5.82,
            },
            1280: {
              slidesPerView: 6.5,
            },
          },
        });
      });
    }

    if ($('[data-swiper="advantages"]').length) {
      $('[data-swiper="advantages"]').each(function () {
        var swiperAdvantages = new Swiper($(this), {
          slidesPerView: 1,
          loop: true,
          effect: "slide",
          watchOverflow: true,
          autoHeight: true,

          pagination: {
            el: $(this).parent().find(".swiper-pagination"),
            type: "bullets",
            clickable: true,
          },
          navigation: {
            nextEl: $(
              '[data-swiper-nav="' + $(this).data("swiper") + '"]'
            ).find(".swiper-button-next"),

            prevEl: $(
              '[data-swiper-nav="' + $(this).data("swiper") + '"]'
            ).find(".swiper-button-prev"),
          },
          on: {
            click: function () {
              swiperAdvantages.slideNext();
            },
          },
        });
      });
    }

    if ($('[data-swiper="object-gallery"]').length) {
      $('[data-swiper="object-gallery"]').each(function () {
        var swiperGallery = new Swiper($(this), {
          slidesPerView: 1,
          loop: true,
          effect: "slide",
          watchOverflow: true,
          autoHeight: true,
          pagination: {
            el: $(this).find(".swiper-pagination"),
            type: "fraction",
          },
          navigation: {
            nextEl: $(
              '[data-swiper-nav="' + $(this).data("swiper") + '"]'
            ).find(".swiper-button-next"),

            prevEl: $(
              '[data-swiper-nav="' + $(this).data("swiper") + '"]'
            ).find(".swiper-button-prev"),
          },
          breakpoints: {
            600: {
              centeredSlides: true,
              slidesPerView: 1.2,
              spaceBetween: 6,
            },
          },
          on: {
            init: function () {
              var plan_index = $('[data-slidetype="plan"]').data(
                "swiper-slide-index"
              );
              $('[data-btn="slide-plan"]').on("click", function () {
                swiperGallery.slideToLoop(plan_index);
              });
            },
          },
        });
      });
    }

    if ($('[data-swiper="responsive-cards"]').length) {
      var target = $('[data-swiper="responsive-cards"]');
      $('[data-swiper="responsive-cards"]').each(function () {
        var swiperCards = new Swiper($(this), {
          init: false,
          slidesPerView: 1,
          watchSlidesVisibility: true,
          watchOverflow: true,
          loop: false,
          pagination: {
            el: $(this).parent().find(".swiper-pagination"),
            type: "bullets",
            clickable: true,
          },
          observer: true,
          observeParents: true,
        });

        if (max767.matches) {
          swiperCards.init();
        }
      });
    }
  } //swiper end

  $(".swiper-slide:not(.swiper-slide-duplicate) [data-fancybox]").fancybox({
    buttons: ["close"],
    idleTime: false,
  });

  if ($("[data-truncated-text]").length) {
    $("[data-truncated-text]").each(function () {
      var h = parseInt($(this).parent().css("height"));
      if ($(this).height() > h) {
        $(this)
          .parent()
          .next('[data-btn="show-full-text"]')
          .removeAttr("hidden");
      } else {
        $(this).parent().removeClass("truncated-text");
      }
    });

    $('[data-btn="show-full-text"]').each(function () {
      $(this).on("click", function () {
        $(this).prev().removeClass("truncated-text");
        $(this).hide();
      });
    });
  }

  $('[data-btn="open-variants-filter"]').on("click", function () {
    $(".variants-filter").toggleClass("visible");
  });

  $('[data-btn="show-all-variants"]').on("click", function () {
    $(this).prev().find("[hidden]").removeAttr("hidden");
    $(this).parent().removeClass("has-button");
    $(this).hide();
  });

  $(window).on("resize", function () {
    responsive_actions();
    responsive_input_range();
  });
  $(window).on("resize scroll", function () {
    Scroll();
  });
});