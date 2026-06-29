---
# Contact section — minimal email + social block (blank widget).
widget: blank
headless: true
weight: 130
title: Contact
subtitle: null
design:
  columns: "2"
---

<div class="contact-simple">

  <p>I'm always happy to talk research — generative models and AI theory, or their applications in physics. The fastest way to reach me is by email.</p>

  <p><a class="contact-email js-email" href="#contact">tony.bonnaire <span class="email-sep">at</span> ens <span class="email-sep">dot</span> fr</a></p>

  <ul class="contact-social" aria-hidden="true">
    <li><a class="js-email" href="#contact" aria-label="Email"><i class="fas fa-envelope"></i></a></li>
    <li><a href="https://scholar.google.com/citations?user=P1OBcHEAAAAJ&hl=fr" target="_blank" rel="noopener" aria-label="Google Scholar"><i class="fas fa-graduation-cap"></i></a></li>
    <li><a href="https://ui.adsabs.harvard.edu/search/q=author%3A%22Bonnaire%2C%20T%22&sort=date%20desc%2C%20bibcode%20desc&p_=0" target="_blank" rel="noopener" aria-label="NASA ADS"><i class="ai ai-ads"></i></a></li>
    <li><a href="https://github.com/tbonnair" target="_blank" rel="noopener" aria-label="GitHub"><i class="fab fa-github"></i></a></li>
    <li><a href="https://www.linkedin.com/in/tbonnair" target="_blank" rel="noopener" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a></li>
  </ul>

</div>

<script>
  // Assemble the email only on user interaction so the raw address and
  // mailto: link never appear in the page source for scrapers to harvest.
  (function () {
    var parts = ['tony.bonnaire', 'ens' + '.' + 'fr'];
    function reveal(e) {
      e.currentTarget.setAttribute('href', 'mailto:' + parts[0] + '@' + parts[1]);
    }
    var links = document.querySelectorAll('.js-email');
    for (var i = 0; i < links.length; i++) {
      links[i].addEventListener('mouseenter', reveal);
      links[i].addEventListener('focus', reveal);
      links[i].addEventListener('click', reveal);
    }
  })();
</script>
