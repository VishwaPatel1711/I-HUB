<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication5.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<form runat="server">

	
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">      
            <div class="carousel-inner">
                <div class="item active" style="background-image:url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2 class="animation animated-item-1">Welcome <br /><span>I-Hub</span></h2>
                                    <p class="animation animated-item-2">Internship-Hub is a platform to get Internships... Our main goal is to improve technical skills of students...</p>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/girls-removebg-preview.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->             
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->
	
	<div class="feature">
		<div class="container">
			<div class="text-center">
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" >
						<i class="fa fa-book"></i>	
						<h2>Students</h2>
						<p>Many students can enroll for internships.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" >
						<i class="fa fa-laptop"></i>	
						<h2>Company & Startups</h2>
						<p>Many Company&Startups Register with us for internship.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms" >
						<i class="fa fa-flag"></i>	
						<h2>Best Internships</h2>
						<p>We provide best internships in industry.Register with us to get opportunity.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms" >
						<i class="fa fa-heart-o"></i>	
						<h2>Free Access</h2>
						<p>We provide Free Access to all our students to awell the internships.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="about">
		<div class="container">
			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" >
				<h2>About Us</h2>
				<img src="images/6.jpg" class="img-responsive"/>
				<p>	 The system has various openings for the internships related to various categories. These internships are available at free of cost for the students. 
	Student can signup and login the system and can apply for the internship. Once the student applied he / she needs to provide the details and appear for test, once the the test is completed his/ her application is stored in the system.
	
				</p>
			</div>
			
			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" >
				<h2>About I-Hub</h2>
				<p>	This proposed project is providing an online platform for getting internships for the students. The website has various users like company, students & admin. All these users have their own tasks in the system. Admin is the top most user of the system who controls the system and also manage them. 	</p>
				<p>	Later the company can check the applications and update the application status. By this student can get the internship and company will get the freshers for the work. </p>
			</div>
		</div>
	</div>

	<%--<div class="lates">
		<div class="container">
			<div class="text-center">
				<h2>Lates News</h2>
			</div>
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<img src="images/4.jpg" class="img-responsive"/>
				<h3>About I-Hub</h3>
				<p>	This proposed project is providing an online platform for getting internships for the students. The website has various users like company, students & admin. All these users have their own tasks in the system. Admin is the top most user of the system who controls the system and also manage them. 
	The system has various openings for the internships related to various categories. These internships are available at free of cost for the students. 
									</p>
			</div>
			
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<img src="images/4.jpg" class="img-responsive"/>
				<h3>Template built with Twitter Bootstrap</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				</p>
			</div>
			
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">				
				<img src="images/4.jpg" class="img-responsive"/>
				<h3>Template built with Twitter Bootstrap</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat 
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
				</p>
			</div>
		</div>
	</div>--%>

	<section id="partner">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Our Partners</h2>
                <p>Following are our Industrial Partner.</p>     </div>    

            <div class="partners">
                <ul>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" src="images/partners/partner1.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" src="images/partners/partner2.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms" src="images/partners/partner3.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms" src="images/partners/partner4.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="images/partners/partner5.png"></a></li>
                </ul>
            </div>        
        </div><!--/.container-->
    </section><!--/#partner-->
	
	<section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>Have a question or need of an internship?</h2>
                            <p>We Provides great opportunity for students.<p></panel>
								+91 910-616-3167</p></p>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
	</form>
    
</asp:Content>
