
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>My Website</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/respond.js"></script>
</head>

<body>
<jsp:include page="/header.jsp"/>
	<div class="container">
    	<div class="row">
            <article class="col-sm-8 col-sm-push-4">
                <h1> Our Veterinarians Bring Extensive Experience</h1>
                <p>Wisdom Pet Medicine was founded by Dr. Darren Winthrop, Dr.    Elizabeth Chase, and Dr. Kimberly Sanders to bring the best in   traditional and  alternative medicine to the local community. The three   doctors met while pursuing  their veterinary education at Colorado State   University, one of the nation's  top-rated vet schools. After going   their own ways (for almost a decade), to  work for different veterinary   clinics across the country, the doctors decided  it was time to combine   their diverse knowledge and skills under one practice at  Wisdom Pet   Medicine.</p>
                <p>Staying up on the latest technology and procedures, empowers us to   diagnose  and treat more conditions in-house, rather than having to ship   your pet out to  a specialist's office. Our goal is to help keep your   love ones comfortable by  keeping them in friendly and familiar   surroundings for the duration of their  care. </p>
                <p>Our veterinary hospital provides general and specialty vet  medicine,   and serves as a major surgical center in the region. We're often    referred difficult cases from other vet clinics throughout the region,   state,  and country, and even treat cases from other countries. </p>
                <p>We all love animals and strive to make your pet's experience as   positive  as possible. This is why we have a pet play yard in the back   of our clinic  where we give our overnight visitors regular time away   from the stress of  confinement and treatment. </p>
                <p>We  are proud to say that most of our patients come in wagging their   tails happily  on return visits – a true indicator that we've made them   feel safe and secure.  We're honored that you've entrusted your pet's   care to us, and we'll stand by  our commitment to provide the absolute   best in veterinary medicine.</p>
          <div class="row">
         	<div class="col-md-4">
            	<img src="img/winthrop.jpg" alt="Dr. Winthrop with his dog, Missy" title="Dr. Winthrop with his dog, Missy">  
                <p>Dr. Winthrop is the guardian of Missy, a three-year old Llaso mix, who   he adopted at the shelter (he just couldn't resist those sad eyes). Dr.   Winthrop is passionate about spay and neuter and pet adoption, and works   tireless hours outside the clinic, performing free spay and neuter   surgeries for the shelter.</p>
            </div>
            <div class="col-md-4">
            	<img src="img/chase.jpg" alt="Dr Chase with Kibbles" title="Dr Chase with Kibbles"> 
                <p>Dr. Chase spends much of her free time helping the local bunny rescue   organization find homes for bunnies, such as Kibbles. This cuddly    Dalmatian bunny is part of the large Chase household, which also   includes two dogs, three cats, and a turtle.</p>
            </div>
            <div class="col-md-4">            
            	<img src="img/sanders.jpg" alt="Dr. Sanders with Leroy" title="Dr. Sanders with Leroy">  
                <p>Leroy walked into Dr. Sanders' front door when she was moving into a new   house. After searching for weeks for Leroy's guardians, she decided to   make Leroy a part of her pet family. Leroy has settled into his new   home, and especially enjoys playing with Dr. Sanders' other cats.</p>
            </div>
         </div>
             </article>
             <aside class="col-sm-4 col-sm-pull-8">
                <img src="img/sick-puppy.jpg">
                <h2> We specialize in: </h2>
                <ul>
                  <li>General Wellness Care</li>
                  <li>Preventative Care</li>
                  <li>Emergency Care</li>
                  <li>Vaccinations</li>
                  <li>Diagnostics</li>
                  <li>Orthopedics</li>
                  <li>Dermatology</li>
                  <li>Oncology</li>
                  <li>Radiology</li>
                  <li>Ultrasound</li>
                </ul>
            </aside>
         </div>


	</div>
<!-- javascript -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
