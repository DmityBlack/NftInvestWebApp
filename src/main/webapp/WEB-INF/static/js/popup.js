// // main
// const body = document.querySelector('body');
// const popupLinks = document.querySelectorAll('.popup-link');
// const lockPadding = document.querySelectorAll('.lock-padding');

// const unlock = true;

// // check popup open

// if (popupLinks.length > 0) {
//     for (let i = 0; i < popupLinks.length; i++) {
//         const popupLink = popupLinks[i];
//         popupLink.addEventListener('click', function (event) {
//             const popupName = popupLink.getAttribute('href').replace('#', '');
//             const curentPopup = getElementById(popupName);
//             popupOpen(curentPopup);
//             event.preventDefault();
//         });
//     }
// }

// // check popup close

// const popupCloseIcon = document.querySelectorAll('.close-popup');
// if (popupCloseIcon.length > 0) {
//     for (let i = 0; i < popupCloseIcon.length; i++) {
//         const el = popupCloseIcon[i];
//         el.addEventListener('click', function (event) {
//             popupClose(el.closest('.popup'));
//             event.preventDefault();
//         });
//     }
// }

// // popup open

// function popupOpen(curentPopup) {
//     if (curentPopup && unlock) {
//         const popupActive = document.querySelector('.popup.open');
//         if (popupActive) {
//             popupClose(popupActive, false);
//         } else {
//             bodyLock()
//         }
//         curentPopup.classList.add('.open');
//         curentPopup.addEventListener('click', function (event) {
//             if (!event.target.closest('.popup-inner')) {
//                 popupClose(event.target.closest('.popup'));
//             }
//         });
//     }
// }

// function popupClose(popupActive, doUnlock = true) {
//     if (unlock) {
//         popupActive.classList.add('open')
//         if (doUnlock) {
//             bodyUnlock()
//         }
//     }
// }

// const timeout = 800;

// function bodyLock() {
//     const lockPaddingValue = window.innerWidth - document.querySelector('.wrapper');

//     if (lockPadding.length > 0) {
//         for (let i = 0; i < lockPadding.length; i++) {
//             const el = lockPadding[i];
//             el.style.paddingRight = lockPaddingValue;
//         }
//     }

//     body.style.paddingRight = lockPaddingValue;
//     body.classList.add('lock');

//     unlock = false;
//     setTimeout(function () {
//         unlock = false;
//     }, timeout);
// }

// function bodyUnlock() {
//     setTimeout(function () {
//         if (lockPadding.length > 0) {
//             for (let i = 0; i < lockPadding.length; i++) {
//                 const el = lockPadding[i];
//                 el.style.paddingRight = '0px';
//             }
//         }
//         body.style.paddingRight = '0px';
//         body.classList.remove('lock');

//     }, timeout);

//     unlock = false;
//     setTimeout(function () {
//         unlock = false;
//     }, timeout);
// }

// document.addEventListener('keydown', function (event) {
//     if (event.which === 27) {
//         const popupActive = document.querySelector('.popup.open');
//         popupClose(popupActive);
//     }
// })






// const popupLinks = document.querySelectorAll('.popup-link');
// const modals = document.querySelectorAll('.popup')

// popupLinks.forEach((el) => {
//     el.addEventListener('click', (e) => {
//         let popupLink = e.currentTurget.getAttribute('data-pop-link');
//         console.log(popupLink);
//         modals.style.display = 'block';
//     })
// });





// const popupLink = document.querySelector('.popup-link');
// const popupLink_2 = document.querySelector('.popup-link__2');
// const popup_in = document.querySelector('.popup');
// const popup_up = document.querySelector('.popup__2');


// console.log(popupLink);
// console.log(popupLink_2);

// popupLink.addEventListener('click', function () {
//     console.log('ok');
// })



// if (popups.length > 0) {
//     for (let i = 0; i < popups.length; i++) {
//         const popup = popups[i];
//     }
// }

// if (popupLinks.length > 0) {
//     for (let i = 0; i < popupLinks.length; i++) {
//         const popupLink = popupLinks[i];
//         popupLink.addEventListener('click', function (event) {
//             popup.classList.add('.open')
//         });
//     }
// }



let popupLinks = document.querySelectorAll("*[data-pop-link]");

for (let i = 0; i < popupLinks.length; i++) {
    popupLinks[i].addEventListener('click', function () {
        let name = popupLinks[i].getAttribute('data-pop-link');
        let modal = document.querySelector("[data-pop-window='" + name + "']");
        // let modal_i = document.querySelector(".poppup");
        // modal_i.classList.remove('open');
        modal.classList.add('open')


        let close = modal.querySelector('.popup-close');
        close.addEventListener('click', function () {
            modal.classList.remove('open');
        })
    })
}

window.onclick = function (e) {
    if (e.target.hasAttribute('data-pop-window')) {
        let modals = document.querySelectorAll("*[data-pop-windiw]");
        for (let i = 0; i < modals.length; i++) {
            modals[i].classList.remove('open');
        }
    }
}

const viewPassBtns = document.querySelectorAll('.pass-id');
