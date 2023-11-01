<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{
  overflow: hidden;
  background-image: linear-gradient(to right top, #2a1151, #29154f, #29194d, #291c4b, #291f48, #271e45, #241e42, #221d3f, #1c193c, #161538, #101135, #0a0b32);
    overflow: hidden;
}
.bloc-principal{
  width: 100%;
  height: 100vh;
}

.bloc-interieur{
    height: 100%;
   height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
   overflow: hidden;
}

.grand_cercle{
    width: 575px;
    height: 575px;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgb(178 119 8);
    border-radius: 290px;
    box-shadow: 0px 0px 56px -13px rgb(0 0 0);
    z-index: 9;
}

.petit_cercle{
    width: 375px;
    height: 375px;
    background-color: rgb(255, 168, 5);
    border-radius: 190px;
    box-shadow: 0px 0px 56px -13px rgb(0 0 0);
}

.petit_cercle div{
    display: flex;
    justify-content: space-around;
    font-family: "ONE PIECE";
    font-size: 228px;
    font-weight: bolder;
    color: #fff;
    text-shadow: 0px 0px 11px black;
}

.E404{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}

/* le 4 du gauche */
.petit_cercle .left{
    z-index: 2;
}

button {
    position: absolute;
    transform: translateY(150px);
    padding: 8px 12px;
    border: 1px solid #fff;
    border-radius: 20px;
    cursor: pointer;
    z-index: 999;
    font-size: 16px;
    box-shadow: 0px 0px 11px black;
}

.oops {
    position: absolute;
    transform: translatey(223px);
    font-size: 18px;
    color: #fff;
}

.logo-container{
    position: absolute;
    display: flex;
    flex-direction: column;
    transform: translateY(-120px);
    animation: bounce 5s infinite ease-in-out;
}

/* animation */
@keyframes bounce{
    0%{
      transform: translateY(-120px);
    }
    50%{
      transform: translateY(-46px);
    }
    100%{
        transform: translateY(-120px);
    }
  }

  
.luffy{
    transform: translate(51px ,79px);
    width: 150px;
    filter: drop-shadow(0 0 4px black);
    z-index: 2;
}

.luffy_logo{
    width: 250px;
    filter: drop-shadow(0 0 4px black);
}

.rocket_container {
    z-index: 95;
    position: absolute;
    transform: translateX(50px); 
    right: 0px;
    top: 30%;
    pointer-events: none;
    animation: rocket-movement 50s linear infinite both running;
}

.rocket {
  position: absolute;
    transform: rotate(-110deg);
    width:40px;
}

@-moz-keyframes rocket-movement { 
    100% {-moz-transform: translate(-356px,-265px);} }
@-webkit-keyframes rocket-movement {
    100% {-webkit-transform: translate(-356px,-265px); } }
@keyframes rocket-movement { 
    100% {transform: translate(-356px,-265px);} }



/*  
c'est un code SCSS qui est traduit en css avec:
https://jsonformatter.org/scss-to-css

*/

#stars-group-1 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    position: relative;
    top: 0;
    left: 1756px;
    opacity: 0;
    box-shadow: 224px 338px #fff, 330px 515px #fff, 399px 1521px #fff, 296px 710px #fff, 110px 1435px #fff, 754px 1123px #fff, 1696px 1262px #fff, 1285px 1653px #fff, 71px 1476px #fff, 839px 572px #fff, 608px 1678px #fff, 1423px 231px #fff, 689px 1246px #fff, 824px 1515px #fff, 147px 1582px #fff, 1252px 380px #fff, 1209px 980px #fff, 367px 1105px #fff, 40px 193px #fff, 1676px 1143px #fff, 27px 495px #fff, 1202px 267px #fff, 194px 15px #fff, 164px 1573px #fff, 1156px 1714px #fff, 1406px 854px #fff, 396px 571px #fff, 1477px 275px #fff, 534px 1330px #fff, 215px 790px #fff, 338px 354px #fff, 534px 495px #fff, 405px 1427px #fff, 594px 689px #fff, 363px 1276px #fff, 199px 641px #fff, 1695px 673px #fff, 676px 702px #fff, 1718px 1562px #fff, 91px 1225px #fff, 1479px 825px #fff, 11px 1712px #fff, 1272px 1711px #fff, 1725px 199px #fff, 352px 169px #fff, 982px 713px #fff, 469px 57px #fff, 440px 141px #fff, 936px 500px #fff, 1347px 603px #fff, 758px 150px #fff, 1010px 1231px #fff, 1099px 1778px #fff, 1402px 1664px #fff, 1283px 447px #fff, 975px 1427px #fff, 1217px 765px #fff, 850px 1px #fff, 65px 378px #fff, 1280px 1091px #fff, 15px 457px #fff, 1586px 1326px #fff, 675px 265px #fff, 1729px 1362px #fff, 15px 1095px #fff, 1480px 681px #fff, 1227px 41px #fff, 974px 1431px #fff, 1388px 902px #fff, 1698px 1459px #fff, 1604px 239px #fff, 323px 1422px #fff, 1515px 1059px #fff, 1607px 415px #fff, 1417px 1460px #fff, 912px 1617px #fff, 1060px 695px #fff, 965px 787px #fff, 416px 1258px #fff, 558px 550px #fff, 1094px 339px #fff, 1769px 1567px #fff, 1706px 1169px #fff, 529px 29px #fff, 667px 1383px #fff, 632px 485px #fff, 1398px 1540px #fff, 713px 430px #fff, 1493px 723px #fff, 964px 1003px #fff, 1510px 211px #fff, 1495px 1596px #fff, 806px 1238px #fff, 1229px 1328px #fff, 470px 955px #fff, 1339px 241px #fff, 1569px 369px #fff, 1523px 53px #fff, 251px 619px #fff, 889px 1163px #fff, 1544px 476px #fff, 964px 1289px #fff, 699px 1438px #fff, 631px 1407px #fff, 413px 1556px #fff, 1165px 1278px #fff, 1544px 193px #fff, 626px 827px #fff, 584px 279px #fff, 374px 1297px #fff, 1163px 1084px #fff, 312px 580px #fff, 1029px 1654px #fff, 97px 293px #fff, 339px 1093px #fff, 1592px 311px #fff, 417px 1044px #fff, 1565px 617px #fff, 1632px 251px #fff, 87px 631px #fff, 454px 642px #fff, 109px 1785px #fff, 1195px 1619px #fff, 1558px 364px #fff, 656px 1343px #fff, 771px 976px #fff, 1050px 1769px #fff, 1635px 1518px #fff, 817px 503px #fff, 1008px 810px #fff, 55px 1448px #fff, 681px 1311px #fff, 606px 1664px #fff, 856px 790px #fff, 999px 1427px #fff, 1132px 799px #fff, 466px 1212px #fff, 790px 114px #fff, 1582px 197px #fff, 185px 1189px #fff, 1657px 593px #fff, 1657px 1231px #fff, 1765px 1684px #fff, 540px 1613px #fff, 1368px 173px #fff, 1463px 393px #fff, 1042px 483px #fff, 99px 859px #fff, 1632px 942px #fff, 408px 525px #fff, 592px 521px #fff, 1735px 503px #fff, 382px 1060px #fff, 273px 1276px #fff, 1718px 1184px #fff, 1339px 1014px #fff, 1596px 1104px #fff, 1146px 1438px #fff, 592px 1085px #fff, 917px 944px #fff, 1281px 563px #fff, 1146px 1143px #fff, 584px 208px #fff, 931px 1381px #fff, 867px 1225px #fff, 607px 140px #fff, 427px 1695px #fff, 1271px 1043px #fff, 538px 181px #fff, 678px 681px #fff, 836px 345px #fff, 879px 1010px #fff, 1418px 830px #fff, 246px 633px #fff, 252px 1708px #fff, 1177px 1506px #fff, 339px 506px #fff, 255px 1528px #fff, 1309px 400px #fff, 898px 827px #fff, 663px 1277px #fff, 578px 512px #fff, 905px 30px #fff, 1042px 1689px #fff, 1661px 1623px #fff, 1125px 1635px #fff, 911px 1722px #fff, 981px 1312px #fff, 1040px 1447px #fff, 1090px 348px #fff, 151px 1287px #fff, 357px 5px #fff, 977px 968px #fff, 940px 719px #fff, 113px 804px #fff, 532px 1344px #fff, 1369px 517px #fff, 762px 155px #fff, 1610px 562px #fff, 1508px 247px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0s;
}
#stars-group-2 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    opacity: 0;
    box-shadow: 1008px 61px #fff, 1178px 1543px #fff, 739px 1709px #fff, 816px 1475px #fff, 584px 1171px #fff, 873px 513px #fff, 1319px 935px #fff, 374px 792px #fff, 810px 66px #fff, 1737px 885px #fff, 1790px 1347px #fff, 232px 1054px #fff, 990px 724px #fff, 347px 216px #fff, 1254px 1049px #fff, 764px 214px #fff, 1615px 792px #fff, 1319px 1111px #fff, 1769px 1724px #fff, 1195px 1425px #fff, 338px 1413px #fff, 202px 1314px #fff, 1252px 1168px #fff, 121px 645px #fff, 525px 1401px #fff, 417px 715px #fff, 788px 567px #fff, 1054px 845px #fff, 1247px 527px #fff, 1194px 1042px #fff, 1671px 69px #fff, 1607px 1233px #fff, 1659px 1099px #fff, 533px 1782px #fff, 1744px 239px #fff, 1428px 1286px #fff, 1453px 1256px #fff, 1701px 1487px #fff, 274px 220px #fff, 1111px 1512px #fff, 1126px 240px #fff, 792px 626px #fff, 1119px 850px #fff, 384px 980px #fff, 632px 169px #fff, 311px 348px #fff, 602px 175px #fff, 996px 1520px #fff, 1181px 1356px #fff, 1795px 857px #fff, 1684px 151px #fff, 1292px 555px #fff, 325px 1140px #fff, 1481px 1393px #fff, 1009px 606px #fff, 1043px 637px #fff, 369px 188px #fff, 885px 670px #fff, 771px 106px #fff, 1212px 994px #fff, 645px 857px #fff, 1661px 269px #fff, 737px 1718px #fff, 565px 915px #fff, 328px 1114px #fff, 699px 924px #fff, 81px 120px #fff, 638px 1155px #fff, 1657px 428px #fff, 88px 453px #fff, 1235px 1664px #fff, 1367px 87px #fff, 1337px 601px #fff, 661px 1330px #fff, 1170px 878px #fff, 664px 810px #fff, 1062px 938px #fff, 1786px 998px #fff, 1695px 180px #fff, 1718px 942px #fff, 1773px 205px #fff, 193px 382px #fff, 1793px 276px #fff, 711px 1691px #fff, 1479px 1076px #fff, 1009px 898px #fff, 1605px 1614px #fff, 1785px 596px #fff, 101px 1066px #fff, 763px 982px #fff, 540px 365px #fff, 1493px 1533px #fff, 211px 1356px #fff, 1524px 631px #fff, 1530px 1533px #fff, 1166px 1408px #fff, 977px 76px #fff, 897px 964px #fff, 1182px 337px #fff, 950px 1185px #fff, 28px 951px #fff, 1020px 1226px #fff, 217px 477px #fff, 1249px 1111px #fff, 141px 156px #fff, 255px 1460px #fff, 1511px 1751px #fff, 496px 1787px #fff, 804px 616px #fff, 1063px 1135px #fff, 137px 974px #fff, 1675px 606px #fff, 1395px 696px #fff, 1042px 935px #fff, 106px 394px #fff, 133px 421px #fff, 361px 323px #fff, 71px 1433px #fff, 449px 443px #fff, 953px 686px #fff, 1229px 419px #fff, 710px 556px #fff, 1199px 1073px #fff, 72px 658px #fff, 592px 960px #fff, 1309px 885px #fff, 109px 318px #fff, 735px 941px #fff, 148px 1367px #fff, 1560px 863px #fff, 290px 987px #fff, 194px 1000px #fff, 212px 1268px #fff, 44px 1775px #fff, 20px 103px #fff, 206px 1742px #fff, 282px 1728px #fff, 1709px 1115px #fff, 1637px 725px #fff, 739px 974px #fff, 257px 1241px #fff, 959px 1647px #fff, 826px 1455px #fff, 887px 153px #fff, 683px 1222px #fff, 1461px 838px #fff, 1568px 1499px #fff, 642px 1266px #fff, 780px 1779px #fff, 961px 253px #fff, 683px 1072px #fff, 1075px 85px #fff, 1349px 973px #fff, 542px 64px #fff, 515px 926px #fff, 239px 660px #fff, 122px 35px #fff, 1391px 692px #fff, 876px 331px #fff, 1457px 667px #fff, 205px 65px #fff, 1573px 1435px #fff, 1660px 1484px #fff, 1540px 1396px #fff, 482px 1519px #fff, 1581px 1769px #fff, 889px 697px #fff, 326px 482px #fff, 5px 61px #fff, 972px 1471px #fff, 972px 1054px #fff, 792px 1328px #fff, 650px 345px #fff, 1202px 1290px #fff, 468px 108px #fff, 73px 247px #fff, 1365px 1007px #fff, 1335px 1728px #fff, 1330px 1073px #fff, 1365px 584px #fff, 254px 1484px #fff, 424px 1676px #fff, 1539px 311px #fff, 774px 812px #fff, 247px 1515px #fff, 1294px 1755px #fff, 1741px 1602px #fff, 1321px 1571px #fff, 1213px 1043px #fff, 727px 822px #fff, 1004px 1665px #fff, 672px 1451px #fff, 1485px 132px #fff, 1182px 190px #fff, 449px 33px #fff, 384px 1790px #fff, 1094px 310px #fff, 346px 336px #fff, 320px 1311px #fff, 1003px 1028px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0.1s;
}
#stars-group-3 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    position: relative;
    top: 1070px;
    opacity: 0;
    box-shadow: 17px 329px #fff, 439px 1657px #fff, 968px 1050px #fff, 1341px 1173px #fff, 438px 1796px #fff, 519px 269px #fff, 469px 591px #fff, 710px 620px #fff, 106px 591px #fff, 862px 86px #fff, 1467px 199px #fff, 926px 75px #fff, 703px 1766px #fff, 383px 1237px #fff, 1010px 38px #fff, 524px 277px #fff, 908px 1580px #fff, 230px 1094px #fff, 274px 411px #fff, 1132px 1040px #fff, 313px 358px #fff, 793px 876px #fff, 1146px 434px #fff, 243px 906px #fff, 106px 1178px #fff, 1758px 808px #fff, 1733px 182px #fff, 822px 1762px #fff, 1248px 858px #fff, 1701px 1765px #fff, 340px 468px #fff, 1144px 505px #fff, 1401px 825px #fff, 1366px 93px #fff, 268px 998px #fff, 1194px 1270px #fff, 1317px 1112px #fff, 1721px 935px #fff, 1389px 1126px #fff, 794px 1525px #fff, 1276px 79px #fff, 1372px 76px #fff, 864px 1777px #fff, 1094px 1001px #fff, 1583px 770px #fff, 1163px 86px #fff, 899px 1027px #fff, 1470px 1293px #fff, 530px 1153px #fff, 1238px 1071px #fff, 1528px 111px #fff, 1307px 926px #fff, 1502px 1499px #fff, 1475px 885px #fff, 1563px 547px #fff, 1570px 472px #fff, 951px 1318px #fff, 1438px 412px #fff, 1765px 1032px #fff, 274px 679px #fff, 1546px 659px #fff, 826px 1444px #fff, 984px 965px #fff, 466px 229px #fff, 1394px 1339px #fff, 1441px 1664px #fff, 941px 1236px #fff, 1016px 332px #fff, 311px 289px #fff, 1298px 326px #fff, 1065px 1133px #fff, 1077px 1585px #fff, 1415px 1432px #fff, 1350px 1351px #fff, 933px 1319px #fff, 201px 1474px #fff, 1779px 572px #fff, 232px 1460px #fff, 632px 1718px #fff, 628px 48px #fff, 660px 1289px #fff, 777px 801px #fff, 450px 543px #fff, 135px 1382px #fff, 1794px 1235px #fff, 201px 1096px #fff, 1081px 867px #fff, 836px 69px #fff, 1231px 1747px #fff, 1532px 72px #fff, 1186px 466px #fff, 434px 950px #fff, 1566px 307px #fff, 1473px 954px #fff, 395px 1614px #fff, 582px 910px #fff, 760px 947px #fff, 337px 982px #fff, 161px 1756px #fff, 117px 1118px #fff, 239px 1050px #fff, 1773px 404px #fff, 208px 1191px #fff, 1559px 439px #fff, 1253px 503px #fff, 510px 1453px #fff, 973px 1045px #fff, 92px 1758px #fff, 731px 1008px #fff, 159px 1773px #fff, 1104px 1554px #fff, 563px 424px #fff, 328px 436px #fff, 174px 531px #fff, 495px 1775px #fff, 1393px 1022px #fff, 1068px 1134px #fff, 2px 1099px #fff, 553px 1092px #fff, 1788px 6px #fff, 546px 182px #fff, 707px 380px #fff, 2px 63px #fff, 660px 1294px #fff, 1502px 925px #fff, 1778px 1471px #fff, 382px 1596px #fff, 1435px 734px #fff, 1006px 1679px #fff, 385px 1618px #fff, 1423px 1214px #fff, 121px 758px #fff, 645px 1075px #fff, 363px 993px #fff, 1368px 141px #fff, 1198px 1778px #fff, 1730px 855px #fff, 609px 390px #fff, 88px 446px #fff, 20px 1425px #fff, 1033px 418px #fff, 1249px 1075px #fff, 677px 374px #fff, 357px 1666px #fff, 1070px 379px #fff, 1109px 45px #fff, 1460px 1718px #fff, 341px 998px #fff, 1586px 822px #fff, 888px 1274px #fff, 473px 530px #fff, 358px 1115px #fff, 775px 1510px #fff, 1376px 983px #fff, 1554px 522px #fff, 1618px 378px #fff, 938px 224px #fff, 453px 1363px #fff, 399px 1041px #fff, 683px 270px #fff, 1603px 795px #fff, 536px 811px #fff, 237px 494px #fff, 1505px 203px #fff, 930px 122px #fff, 1747px 881px #fff, 488px 1140px #fff, 356px 321px #fff, 1016px 561px #fff, 899px 470px #fff, 1673px 1307px #fff, 639px 1754px #fff, 810px 152px #fff, 1396px 1308px #fff, 1535px 1410px #fff, 720px 1230px #fff, 783px 722px #fff, 82px 1579px #fff, 1209px 991px #fff, 349px 1171px #fff, 625px 190px #fff, 1781px 1399px #fff, 1577px 117px #fff, 25px 1582px #fff, 1228px 946px #fff, 1584px 604px #fff, 901px 1302px #fff, 288px 1043px #fff, 1230px 1278px #fff, 836px 32px #fff, 1642px 1512px #fff, 352px 1648px #fff, 333px 909px #fff, 205px 999px #fff, 372px 57px #fff, 1323px 1059px #fff, 1649px 662px #fff, 1468px 1377px #fff, 1175px 961px #fff, 606px 258px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0.2s;
}
#stars-group-4 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    opacity: 0;
    box-shadow: 276px 649px #fff, 1607px 404px #fff, 1757px 142px #fff, 1637px 1501px #fff, 1538px 1135px #fff, 1771px 1514px #fff, 1352px 755px #fff, 1625px 1548px #fff, 42px 938px #fff, 1660px 880px #fff, 1663px 1064px #fff, 116px 1010px #fff, 1124px 873px #fff, 79px 384px #fff, 35px 1564px #fff, 870px 1500px #fff, 1058px 1116px #fff, 1363px 1096px #fff, 1442px 1134px #fff, 1242px 1603px #fff, 573px 745px #fff, 1786px 24px #fff, 1560px 1456px #fff, 1650px 1623px #fff, 1106px 1772px #fff, 643px 867px #fff, 158px 1586px #fff, 885px 836px #fff, 599px 1591px #fff, 1389px 307px #fff, 142px 475px #fff, 609px 1793px #fff, 868px 1754px #fff, 103px 1220px #fff, 1718px 733px #fff, 500px 1585px #fff, 1461px 956px #fff, 460px 887px #fff, 1710px 1037px #fff, 1591px 749px #fff, 769px 1023px #fff, 782px 1319px #fff, 1249px 195px #fff, 329px 156px #fff, 1718px 1389px #fff, 686px 400px #fff, 1212px 1777px #fff, 106px 1362px #fff, 763px 1531px #fff, 820px 1514px #fff, 1164px 508px #fff, 876px 485px #fff, 566px 1582px #fff, 104px 1372px #fff, 1113px 1793px #fff, 788px 87px #fff, 165px 1035px #fff, 1435px 82px #fff, 943px 1168px #fff, 250px 1075px #fff, 1243px 1216px #fff, 407px 1794px #fff, 210px 810px #fff, 756px 1095px #fff, 201px 837px #fff, 785px 1640px #fff, 547px 841px #fff, 1629px 66px #fff, 1721px 1475px #fff, 1020px 740px #fff, 1556px 25px #fff, 1416px 1330px #fff, 1327px 1535px #fff, 559px 515px #fff, 1060px 928px #fff, 900px 404px #fff, 1120px 1062px #fff, 511px 1053px #fff, 456px 579px #fff, 1779px 1261px #fff, 980px 1338px #fff, 554px 1705px #fff, 1784px 1412px #fff, 580px 1297px #fff, 709px 771px #fff, 563px 783px #fff, 1692px 526px #fff, 708px 851px #fff, 1592px 735px #fff, 907px 860px #fff, 1567px 197px #fff, 1678px 945px #fff, 1360px 1119px #fff, 246px 210px #fff, 1776px 1401px #fff, 1470px 455px #fff, 420px 668px #fff, 380px 1730px #fff, 849px 972px #fff, 1431px 960px #fff, 1134px 1556px #fff, 893px 1379px #fff, 37px 725px #fff, 1662px 367px #fff, 244px 1229px #fff, 61px 529px #fff, 703px 1252px #fff, 161px 1588px #fff, 912px 1176px #fff, 1px 575px #fff, 941px 572px #fff, 921px 47px #fff, 154px 651px #fff, 777px 871px #fff, 1694px 1000px #fff, 1743px 1433px #fff, 119px 570px #fff, 1344px 417px #fff, 1238px 253px #fff, 1626px 1026px #fff, 1084px 1400px #fff, 1309px 1646px #fff, 353px 836px #fff, 661px 400px #fff, 1053px 1021px #fff, 35px 885px #fff, 1403px 850px #fff, 1485px 631px #fff, 825px 1800px #fff, 791px 1237px #fff, 234px 102px #fff, 986px 1737px #fff, 994px 1172px #fff, 221px 471px #fff, 1532px 436px #fff, 377px 172px #fff, 1133px 788px #fff, 1349px 1774px #fff, 1559px 1475px #fff, 1425px 518px #fff, 315px 1579px #fff, 1177px 281px #fff, 126px 1180px #fff, 682px 1248px #fff, 209px 1637px #fff, 988px 543px #fff, 620px 1742px #fff, 1745px 893px #fff, 1042px 595px #fff, 1758px 1731px #fff, 122px 195px #fff, 791px 788px #fff, 1796px 1462px #fff, 792px 478px #fff, 1560px 1716px #fff, 733px 1182px #fff, 601px 1033px #fff, 1212px 392px #fff, 589px 400px #fff, 1107px 515px #fff, 1285px 735px #fff, 1666px 1205px #fff, 400px 1059px #fff, 135px 968px #fff, 1743px 1600px #fff, 1318px 153px #fff, 1024px 1100px #fff, 708px 488px #fff, 464px 1074px #fff, 1797px 1782px #fff, 85px 1192px #fff, 70px 1532px #fff, 824px 1519px #fff, 1592px 1019px #fff, 1328px 169px #fff, 134px 11px #fff, 1449px 1154px #fff, 471px 341px #fff, 91px 1062px #fff, 1230px 543px #fff, 1016px 136px #fff, 862px 1294px #fff, 596px 1598px #fff, 1238px 1692px #fff, 1469px 1507px #fff, 1768px 1065px #fff, 1202px 1541px #fff, 916px 197px #fff, 363px 1269px #fff, 421px 536px #fff, 1177px 92px #fff, 126px 361px #fff, 16px 1020px #fff, 1751px 924px #fff, 43px 1663px #fff, 1760px 836px #fff, 714px 35px #fff, 57px 1015px #fff, 931px 1507px #fff, 1154px 807px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0.3s;
}
#stars-group-5 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    opacity: 0;
    box-shadow: 744px 179px #fff, 1099px 903px #fff, 868px 658px #fff, 1531px 1308px #fff, 628px 901px #fff, 6px 79px #fff, 1587px 1740px #fff, 1384px 907px #fff, 710px 407px #fff, 461px 211px #fff, 229px 207px #fff, 412px 209px #fff, 332px 998px #fff, 391px 886px #fff, 815px 1715px #fff, 731px 805px #fff, 262px 1691px #fff, 1760px 1374px #fff, 1371px 1655px #fff, 1499px 1674px #fff, 1787px 1306px #fff, 1280px 1586px #fff, 1386px 533px #fff, 1712px 1249px #fff, 871px 1220px #fff, 215px 783px #fff, 683px 1788px #fff, 1666px 146px #fff, 92px 1698px #fff, 1652px 984px #fff, 1743px 911px #fff, 982px 728px #fff, 27px 1575px #fff, 55px 306px #fff, 53px 1273px #fff, 1278px 1190px #fff, 717px 526px #fff, 832px 333px #fff, 560px 749px #fff, 1784px 1666px #fff, 1384px 1047px #fff, 627px 1299px #fff, 560px 638px #fff, 319px 1032px #fff, 930px 1380px #fff, 584px 1045px #fff, 1379px 300px #fff, 1777px 1605px #fff, 1067px 1708px #fff, 1657px 265px #fff, 265px 1128px #fff, 1781px 32px #fff, 161px 1256px #fff, 1389px 1084px #fff, 1407px 1742px #fff, 605px 544px #fff, 151px 1525px #fff, 1550px 340px #fff, 1018px 1461px #fff, 1454px 70px #fff, 93px 528px #fff, 838px 1514px #fff, 927px 755px #fff, 826px 1193px #fff, 221px 680px #fff, 1453px 1136px #fff, 738px 1191px #fff, 1376px 556px #fff, 1196px 543px #fff, 503px 1115px #fff, 1682px 586px #fff, 1623px 250px #fff, 1513px 1527px #fff, 279px 39px #fff, 1457px 843px #fff, 124px 1494px #fff, 1254px 100px #fff, 976px 585px #fff, 702px 1800px #fff, 1582px 126px #fff, 553px 435px #fff, 186px 374px #fff, 154px 559px #fff, 1514px 838px #fff, 1223px 933px #fff, 1670px 1623px #fff, 1674px 58px #fff, 248px 780px #fff, 901px 1441px #fff, 1078px 286px #fff, 711px 1682px #fff, 14px 149px #fff, 1776px 716px #fff, 1757px 1788px #fff, 1289px 1018px #fff, 1075px 1654px #fff, 1551px 1376px #fff, 1092px 750px #fff, 1543px 233px #fff, 1772px 440px #fff, 88px 735px #fff, 1201px 750px #fff, 15px 273px #fff, 895px 367px #fff, 1312px 140px #fff, 827px 1064px #fff, 186px 963px #fff, 1738px 36px #fff, 1110px 1778px #fff, 1351px 1227px #fff, 1087px 915px #fff, 586px 216px #fff, 696px 472px #fff, 987px 477px #fff, 827px 468px #fff, 1120px 532px #fff, 1626px 1451px #fff, 985px 347px #fff, 1508px 1354px #fff, 1135px 834px #fff, 259px 1611px #fff, 1089px 320px #fff, 1585px 1044px #fff, 1499px 715px #fff, 214px 1194px #fff, 1374px 345px #fff, 613px 1415px #fff, 313px 906px #fff, 1798px 1521px #fff, 1382px 1368px #fff, 142px 763px #fff, 733px 1204px #fff, 456px 22px #fff, 892px 995px #fff, 1221px 86px #fff, 1325px 586px #fff, 1044px 757px #fff, 199px 1169px #fff, 919px 117px #fff, 376px 9px #fff, 89px 1154px #fff, 529px 1160px #fff, 955px 465px #fff, 1502px 59px #fff, 367px 247px #fff, 1608px 244px #fff, 98px 1053px #fff, 1218px 403px #fff, 705px 591px #fff, 667px 1733px #fff, 1523px 879px #fff, 1293px 1536px #fff, 1493px 1184px #fff, 1346px 454px #fff, 1408px 1454px #fff, 133px 655px #fff, 483px 301px #fff, 406px 1661px #fff, 1327px 1374px #fff, 92px 1232px #fff, 393px 1704px #fff, 29px 206px #fff, 650px 1267px #fff, 374px 1173px #fff, 770px 109px #fff, 626px 1649px #fff, 812px 563px #fff, 1288px 1734px #fff, 995px 1485px #fff, 553px 331px #fff, 1701px 1462px #fff, 315px 1212px #fff, 1149px 1509px #fff, 1162px 1297px #fff, 314px 975px #fff, 870px 1514px #fff, 260px 1192px #fff, 1466px 307px #fff, 1316px 644px #fff, 1420px 1494px #fff, 995px 201px #fff, 1675px 1012px #fff, 465px 1577px #fff, 617px 56px #fff, 375px 1563px #fff, 1453px 38px #fff, 580px 1101px #fff, 959px 1003px #fff, 45px 1367px #fff, 1625px 1293px #fff, 1446px 475px #fff, 136px 1375px #fff, 674px 1568px #fff, 644px 627px #fff, 39px 683px #fff, 508px 1092px #fff, 1193px 1078px #fff, 521px 1186px #fff, 1248px 973px #fff, 1530px 1687px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0.4s;
}
#stars-group-6 {
    width: 2px;
    height: 2px;
    border-radius: 50%;
    opacity: 0;
    box-shadow: 1057px 1615px #fff, 237px 340px #fff, 798px 1120px #fff, 108px 664px #fff, 1763px 17px #fff, 311px 67px #fff, 763px 69px #fff, 1536px 1546px #fff, 1693px 687px #fff, 613px 1549px #fff, 583px 1423px #fff, 162px 1595px #fff, 1228px 825px #fff, 566px 1576px #fff, 78px 983px #fff, 548px 1797px #fff, 668px 743px #fff, 136px 727px #fff, 413px 516px #fff, 783px 1743px #fff, 448px 121px #fff, 544px 97px #fff, 1266px 1182px #fff, 417px 671px #fff, 426px 1049px #fff, 919px 294px #fff, 605px 1159px #fff, 887px 1483px #fff, 1018px 51px #fff, 733px 1232px #fff, 651px 758px #fff, 921px 1617px #fff, 613px 835px #fff, 616px 1227px #fff, 553px 1428px #fff, 591px 1103px #fff, 1339px 1420px #fff, 951px 140px #fff, 521px 1039px #fff, 1678px 1542px #fff, 1242px 950px #fff, 1372px 472px #fff, 892px 1243px #fff, 1516px 1059px #fff, 1188px 297px #fff, 1615px 643px #fff, 1402px 1370px #fff, 499px 1218px #fff, 650px 986px #fff, 1090px 3px #fff, 335px 1489px #fff, 1553px 1290px #fff, 996px 1136px #fff, 684px 171px #fff, 1339px 539px #fff, 1616px 264px #fff, 502px 1189px #fff, 824px 1608px #fff, 572px 133px #fff, 1345px 794px #fff, 173px 648px #fff, 327px 1677px #fff, 1546px 577px #fff, 1619px 1548px #fff, 779px 1329px #fff, 77px 773px #fff, 81px 976px #fff, 907px 1416px #fff, 774px 371px #fff, 906px 1455px #fff, 1601px 974px #fff, 1331px 1599px #fff, 1274px 249px #fff, 1070px 1647px #fff, 662px 1772px #fff, 359px 1421px #fff, 1607px 1171px #fff, 1224px 190px #fff, 1456px 40px #fff, 1487px 81px #fff, 1295px 587px #fff, 894px 571px #fff, 624px 1055px #fff, 756px 1682px #fff, 1268px 44px #fff, 847px 491px #fff, 509px 1110px #fff, 1328px 459px #fff, 1742px 1043px #fff, 1435px 376px #fff, 1175px 120px #fff, 434px 795px #fff, 1262px 1378px #fff, 733px 1744px #fff, 1485px 423px #fff, 795px 354px #fff, 1265px 1371px #fff, 532px 817px #fff, 1178px 894px #fff, 1592px 731px #fff, 814px 502px #fff, 763px 104px #fff, 501px 1612px #fff, 1494px 807px #fff, 707px 1112px #fff, 1595px 1762px #fff, 45px 657px #fff, 657px 15px #fff, 946px 1603px #fff, 991px 494px #fff, 468px 516px #fff, 1602px 288px #fff, 1145px 153px #fff, 351px 1087px #fff, 388px 407px #fff, 1589px 505px #fff, 526px 826px #fff, 382px 1318px #fff, 1153px 1598px #fff, 971px 1800px #fff, 1198px 1183px #fff, 1110px 355px #fff, 1429px 1546px #fff, 361px 1412px #fff, 1765px 62px #fff, 1287px 609px #fff, 147px 1271px #fff, 834px 1777px #fff, 218px 1708px #fff, 1458px 1059px #fff, 501px 897px #fff, 1431px 1476px #fff, 424px 237px #fff, 1607px 593px #fff, 1202px 603px #fff, 1651px 548px #fff, 1043px 940px #fff, 684px 1615px #fff, 523px 1402px #fff, 318px 36px #fff, 332px 1283px #fff, 955px 1480px #fff, 1773px 1526px #fff, 159px 1052px #fff, 116px 1381px #fff, 1322px 1020px #fff, 388px 1776px #fff, 475px 69px #fff, 514px 808px #fff, 1136px 1218px #fff, 561px 1089px #fff, 104px 1667px #fff, 1385px 1123px #fff, 600px 507px #fff, 659px 761px #fff, 1413px 137px #fff, 728px 1383px #fff, 1780px 1135px #fff, 409px 202px #fff, 1638px 532px #fff, 1143px 293px #fff, 545px 1211px #fff, 1529px 1432px #fff, 1447px 415px #fff, 683px 268px #fff, 1033px 1067px #fff, 985px 123px #fff, 330px 258px #fff, 1329px 123px #fff, 150px 1571px #fff, 987px 404px #fff, 512px 1783px #fff, 1002px 311px #fff, 1094px 909px #fff, 606px 766px #fff, 1066px 31px #fff, 1644px 700px #fff, 1688px 15px #fff, 666px 731px #fff, 1752px 1697px #fff, 1494px 411px #fff, 1417px 843px #fff, 1397px 1596px #fff, 349px 891px #fff, 698px 1730px #fff, 1023px 909px #fff, 1561px 287px #fff, 439px 1619px #fff, 1326px 1328px #fff, 1669px 1365px #fff, 1420px 823px #fff, 708px 1701px #fff, 1788px 1130px #fff, 378px 1060px #fff, 178px 966px #fff, 1004px 1264px #fff, 1013px 361px #fff, 1506px 1386px #fff, 739px 551px #fff, 199px 226px #fff;
    animation-name: glowing-stars;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
    animation-delay: 0.5s;
}
@keyframes glowing-stars {
    0% {
        opacity: 0;
   }
    50% {
        opacity: 1;
   }
    100% {
        opacity: 0;
   }
}
</style>
</head>
<body>
<body>
<!-- partial:index.partial.html -->
<div class="bloc-principal">
            <div id="stars-group-1"></div>
            <div id="stars-group-2"></div>
            <div id="stars-group-3"></div>
            <div id="stars-group-4"></div>
            <div id="stars-group-5"></div>
            <div id="stars-group-6"></div>
            <!-- container du rocket -->
            <!-- <div class="rocket_container">
                <img class="rocket" src="https://www.salehriaz.com/404Page/img/rocket.svg" alt="une image de rocket">
            </div> -->
            
            <div class="bloc-interieur">
                
                <div class="grand_cercle">
                    <div class="petit_cercle">
                        <div class="E404">
                            <div class="left">
                                4
                            </div>
                            <div class="logo-container">
                                <img class="luffy" src="https://dam.scaleflex.com/Demo+Widget/luffy.png?vh=83a125" alt="">
                                <img class="luffy_logo"  src="https://dam.scaleflex.com/Demo+Widget/luffy_logo.png?vh=98eca2" alt="">
                            </div>
                            <div class="right">
                                4
                            </div>
                            <!-- bouton retour -->
                            <button type="button" onclick="window.location.
                            	href='${pageContext.request.contextPath}/cinemaroom/search';">Retour</button>
                        </div>
                    </div>
                    <div class="oops">Oops! Désolé, page introuvable.</div>
                </div>

            </div>
        </div>
<!-- partial -->
  <script  src="./script.js"></script>

</body>
</html>
</body>
</html>