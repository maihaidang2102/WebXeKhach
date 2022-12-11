<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang Chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!----======== CSS ======== -->
<link rel="stylesheet" href="assets/admin/css/style.css">

<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
     <link rel="stylesheet" href="././assets/admin/css/statics.css">
</head>
<body>
	

	<jsp:include page="/views/managerView/layout/sidebar.jsp" />  

	<section class="home" style="background-color: white;">
		 <div class="section-skills">
    <div class="row">
        <div class="col-1-of-4">
            <div class="skill-box skill-box-1">
                <i class="skill-box__icon ion ion-bag"></i>
                <h3 class="heading-tertiary">
                    150
                </h3>
                <div class="skill-box__text">
                    Đơn hàng mới
                </div>
            </div>
        </div>
        <div class="col-1-of-4">
            <div class="skill-box skill-box-2">
                <i class="skill-box__icon ion-stats-bars"></i>
                <h3 class="heading-tertiary">
                    50%
                </h3>
                <div class="skill-box__text">
                    Tỉ lệ thoát
                </div>
            </div>
        </div>
        <div class="col-1-of-4">
            <div class="skill-box skill-box-3">
                <i class="skill-box__icon ion-person-add"></i>
                <h3 class="heading-tertiary">
                    44
                </h3>
                <div class="skill-box__text">
                    Khách hàng mới
                </div>
            </div>
        </div>
        <div class="col-1-of-4">
            <div class="skill-box skill-box-4">
                <i class="skill-box__icon ion ion-pie-graph"></i>
                <h3 class="heading-tertiary">
                    65
                </h3>
                <div class="skill-box__text">
                    Lượng truy cập mới nhất
                </div>
            </div>
        </div>
    </div>
</div>
        
    <div class="container">
        <canvas height="150px" style="margin-top: 20px;
        padding-left:100px;"  id="myChart"></canvas>
    </div>
    <script>
        let myChart = document.getElementById('myChart').getContext('2d');
        // Global Options
        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 18;
        Chart.defaults.global.defaultFontColor = '#777';
    
        let massPopChart = new Chart(myChart, {
          type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
          data:{
            labels:['Số Chuyến', 'Số Vé', 'Lượt Request'],
            datasets:[{
              label:'Population',
              data:[
                5,
                100,
                153,
                
              ],
              //backgroundColor:'green',
              backgroundColor:[
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)',
                'rgba(255, 99, 132, 0.6)'
              ],
              borderWidth:1,
              borderColor:'#777',
              hoverBorderWidth:3,
              hoverBorderColor:'#000'
            }]
          },
          options:{
            title:{
              display:true,
              text:'Biểu Đồ Thống Kê Doanh Thu',
              fontSize:25
            },
            legend:{
              display:true,
              position:'right',
              labels:{
                fontColor:'#000'
              }
            },
            layout:{
              padding:{
                left:50,
                right:0,
                bottom:0,
                top:0
              }
            },
            tooltips:{
              enabled:true
            }
          }
        });
      </script>
	</section>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
        const body = document.querySelector('body'),
	    sidebar = body.querySelector('nav'),
	    toggle = body.querySelector(".toggle"),
	    searchBtn = body.querySelector(".search-box"),
	    modeSwitch = body.querySelector(".toggle-switch"),
	    modeText = body.querySelector(".mode-text");


		toggle.addEventListener("click" , () =>{
		    sidebar.classList.toggle("close");
		})
		
		searchBtn.addEventListener("click" , () =>{
		    sidebar.classList.remove("close");
		})
		
		modeSwitch.addEventListener("click" , () =>{
		    body.classList.toggle("dark");
		    
		    if(body.classList.contains("dark")){
		        modeText.innerText = "Light mode";
		    }else{
		        modeText.innerText = "Dark mode";
		        
		    }
		});
    </script>
    <script type="text/javascript" src="lib.js"></script>
    <script type="text/javascript">
    	function testConfirmDialog(maso_monhoc) {
    		var result = confirm("Bạn chắc chắn muốn xóa môn học này?");
    		
    		if (result) {
    			window.location.href = "deleteMonHoc?maso_monhoc=" + maso_monhoc;
    		} else {
    			return false;
    		}
    	};
    	function Search() {
    		let searchContent = document.getElementById("searchContent").value;
    		
    		if (searchContent != null) {
    			window.location.href = "searchListMonHoc?searchContent=" + searchContent;
    		}
    	};
    </script>
</body>
</html>