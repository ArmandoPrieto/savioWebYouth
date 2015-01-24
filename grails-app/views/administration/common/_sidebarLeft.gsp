  <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="../assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Marcel Newman</h5>
              	  	
                  <li class="mt">
                      <g:link class="active" controller="administration" action="index">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                       </g:link>
                  </li>
				    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Menu</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">Menu 1</a></li>
                          <li><a  href="form_component.html">Menu 2</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                  	<g:link controller="ministry" action="index">
                          <i class="fa fa-tasks"></i>
                          <span>Ministries</span>
                      </g:link>
                  </li>
                 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->