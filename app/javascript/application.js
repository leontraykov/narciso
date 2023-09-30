//=* require lightbox
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

document.addEventListener('turbo:load', function() {
  // PreLoader Init
  function preLoader() {
    document.body.classList.add('loaded');
    let preloaderWrapper = document.querySelector('.preloader-wrapper');
    if (preloaderWrapper) preloaderWrapper.classList.add('loaded');
  }
  preLoader();

  // navbarToggle Init
  function navbarToggle() {
    let navToggle = document.querySelector('.nav-toggle');
    let sidenav = document.querySelector('.sidenav');
    let navToggleOverlay = document.querySelector('.nav-toggle-overlay');
    
    if (navToggle && sidenav && navToggleOverlay) {
      navToggle.addEventListener('click', function() {
        sidenav.classList.toggle('show');
        navToggleOverlay.classList.toggle('show');
        
        let span = navToggle.querySelector('span'); // Предполагается, что вы используете тег <span> для иконки
        if (span) span.classList.toggle('bi-x'); 
        if (span) span.classList.toggle('bi-list');
        });
      
      navToggleOverlay.addEventListener('click', function() {
        sidenav.classList.remove('show');
        navToggleOverlay.classList.remove('show');
        
        let span = navToggle.querySelector('span');
        if (span) span.classList.remove('bi-x');
        if (span) span.classList.add('bi-list');
      });
    }
  }
  navbarToggle();
  
  // form validation (only for this page)
  let forms = document.getElementsByClassName('needs-validation');
  for(let form of forms) {
    form.addEventListener('submit', function(event) {
      if(form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
      }
      form.classList.add('was-validated');
    }, false);
  }
});
