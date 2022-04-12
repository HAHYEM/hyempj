<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>���� �̵���Ű��</title>
    
</head>
<body>
<div id="map" style="width:100%;height:650px;"></div>
<p>
    <button onclick="setCenter()">���� �߽���ǥ �̵���Ű��</button> 
    <button onclick="panTo()">���� �߽���ǥ �ε巴�� �̵���Ű��</button> 
</p>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=�߱޹��� appkey�� �ʿ���"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

function setCenter() {
    // �̵��� ���� �浵 ��ġ�� �����մϴ�
    var moveLatLon = new kakao.maps.LatLng(33.450701, 126.570667);
    
    // ���� �߽��� �̵� ��ŵ�ϴ�
    map.setCenter(moveLatLon);
}

function panTo() {
    // �̵��� ���� �浵 ��ġ�� �����մϴ�
    var moveLatLon = new kakao.maps.LatLng(33.450580, 126.574942);
    
    // ���� �߽��� �ε巴�� �̵���ŵ�ϴ�
    // ���� �̵��� �Ÿ��� ���� ȭ�麸�� ũ�� �ε巯�� ȿ�� ���� �̵��մϴ�
    map.panTo(moveLatLon);
}

//��Ŀ�� ǥ���� ��ġ�Դϴ� 
var position =  new kakao.maps.LatLng(33.450701, 126.570667);

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
  position: position
});

// ��Ŀ�� ������ ǥ���մϴ�.
marker.setMap(map);

// ��Ŀ�� Ŀ���� �������� �� ��Ŀ ���� ǥ���� ���������츦 �����մϴ�
var iwContent = '<div style="padding:5px;">���� ���� �ʹ�!</div>'; // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�

// ���������츦 �����մϴ�
var infowindow = new kakao.maps.InfoWindow({
    content : iwContent
});

// ��Ŀ�� ���콺���� �̺�Ʈ�� ����մϴ�
kakao.maps.event.addListener(marker, 'mouseover', function() {
  // ��Ŀ�� ���콺���� �̺�Ʈ�� �߻��ϸ� ���������츦 ��Ŀ���� ǥ���մϴ�
    infowindow.open(map, marker);
});

// ��Ŀ�� ���콺�ƿ� �̺�Ʈ�� ����մϴ�
kakao.maps.event.addListener(marker, 'mouseout', function() {
    // ��Ŀ�� ���콺�ƿ� �̺�Ʈ�� �߻��ϸ� ���������츦 �����մϴ�
    infowindow.close();
});
</script>
</body>
</html>