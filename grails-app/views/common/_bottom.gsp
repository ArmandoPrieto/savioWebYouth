
<!-- SUBSCRIBE -->
<div class="highlight-bg">
  <div class="container">
    <div class="row">
    
  
        <g:formRemote url="[resource:newsletterInstance, action:'save']" update="result" name="newsletterIndexForm">
        <div class="form-group col-md-3 hidden-sm">
          <h5 class="susbcribe-head"> SUBSCRIBE <span>TO OUR NEWSLETTER</span></h5>
        </div>
        <div class="form-group col-sm-8 col-md-6">
          <label class="sr-only">Email address</label>
          <input type="email" class="form-control input-lg" placeholder="Enter email" name="email" id="address" data-validate="validate(required, email)" required>
          <input type="hidden" name="newsletterIndexFormSubmit" id="newsletterIndexFormSubmit" value="true">
          
          <span class="help-block" id="result"></span> </div>
        <div class="form-group col-sm-4 col-md-3">
          <button type="submit" class="btn btn-lg btn-primary btn-block" name="submit">Keep in touch →</button>
        </div>
    </g:formRemote>
    </div>
  </div>
</div>
<!-- END SUBSCRIBE --> 

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-md-6">
        <h5>ABOUT SAVIO YOUTH MINISTRY</h5>
        <p>For the word of God is living and active. Sharper than any double-edged sword, it penetrates even to dividing soul and spirit, joints and marrow; it judges the thoughts and attitudes.</p>
      </div>
      <!-- <div class="col-sm-6 col-md-3">
        <h5>QUICK LINKS</h5>
        <ul class="footer-links">
          <li><a href="#">Upcoming events</a></li>
          <li><a href="#">Ministries</a></li>
          <li><a href="#">Recent Sermons</a></li>
          <li><a href="#">Contact us</a></li>
        </ul>
      </div> -->
      <div class="col-sm-6 col-md-3">
        <h5>OUR ADDRESS</h5>
        <p> St. Dominic Savio Church<br>
          13400 Bellflower Blvd. <br>
          Bellflower, CA<br>
          <br>
         
          Email: <a href="#">youthministry@saintdominicsavio.org</a></p>
      </div>
      <div class="col-sm-6 col-md-3">
        <h5>CONNECT</h5>
        <div class="social-icons"><a href="https://www.facebook.com/savioym" target="_blank"><img src="${resource(dir: 'images', file: 'fb-icon.png')}" alt="social"></a> <a href="http://instagram.com/savioym/" target="_blank"><img src="${resource(dir: 'images', file: 'instg-icon.png')}" alt="social" style="width:43px;height:auto;"></a> <a href="https://twitter.com/SavioYM" target="_blank"><img src="${resource(dir: 'images', file: 'tw-icon.png')}" alt="social"></a></div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <p class="text-center">Copyright © 2014 All rights reserved</p>
    </div>
  </div>
</footer>
<!-- // END FOOTER --> 