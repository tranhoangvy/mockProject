select * from Seat
select top 1 seatColumn from Seat where cinemaRoomID='1'
order by seatColumn desc
select top 1 seatRow from Seat where cinemaRoomID='1'
order by seatRow desc
select * from Seat where cinemaRoomID=1
select * from seat where cinemaRoomId = 2 order by seatRow, seatColumn ;

UPDATE seat SET seatStatus = CASE 
							WHEN seat.seatStatus = 0 THEN 1
							WHEN seat.seatStatus = 1 THEN 0 END
								
WHERE seatID in (1,2,3) 
select * from cinemaRoom where cinemaRoomID='2' or cinemaRoomName ='8' or seatQuantity='60'
 
 SELECT * from cinemaRoom
ORDER BY cinemaRoomID
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY
select top (5) * from cinemaRoom
select * from CinemaRoom  where cinemaRoomID like :keyWord or cinemaRoomName like :keyWord or cseatQuantity like :keyWord";