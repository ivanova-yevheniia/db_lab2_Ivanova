INSERT INTO USA_State(zipcode, usa_state)
VALUES (43017, 'Ohio'),
	   (43610, 'Ohio'),
	   (46783, 'Indiana'),
	   (41017, 'Kentucky'),
	   (40216, 'Kentucky'),
	   (40212, 'Kentucky'),
	   (15301, 'Pennsylvania'),
	   (44314, 'Ohio'),
	   (26335, 'West Virginia'),
	   (45237, 'Ohio');
      

INSERT INTO Address(address_id, zipcode, lat, lng, street, side)
VALUES('OH-43017-75639', 43017, 40.108909, -83.09286, 'Outerbelt E', 'Right'),
	  ('OH-43610-41683', 43610, 41.679361, -83.573037, 'I-75 S', 'Left'),
	  ('IN-46783-40985', 46783, 40.99613, -85.26613, 'US-33 S', 'Right'),
	  ('KY-41017-75398', 41017, 39.0381, -84.592430, 'I-75 S', 'Right'),
	  ('KY-40216-38185', 40216, 38.18577, -85.80678, 'Henry Watterson Expy W', 'Right'),
	  ('KY-40212-38285', 40212, 38.27191, -85.80838, 'Henry Watterson Expy W', 'Left'),
	  ('PA-15301-40180', 15301, 40.109653, -80.2029, 'I-79 S', 'Right'),
	  ('OH-44314-41081', 44314, 41.035565, -81.569917, 'I-76 W', 'Right'),
	  ('WV-26335-38880', 26335, 38.829993, -80.667067, 'I-79 S', 'Left'),
	  ('OH-45237-39184', 45237, 39.17397, -84.49031, 'I-75 N', 'Right');

INSERT INTO Accident(accident_id, address_id, accident_date, severity)
VALUES('A-1', 'OH-43017-75639', '2022-02-08', 'Speeding'),
	  ('A-2', 'OH-43610-41683', '2022-02-12', 'Motorcycle Accidents'),
	  ('A-3', 'IN-46783-40985', '2022-03-08', 'DUI'),
	  ('A-4', 'KY-41017-75398', '2022-04-09', 'Speeding'),
	  ('A-5', 'KY-40216-38185', '2022-05-18', 'DUI'),
	  ('A-6', 'KY-40212-38285', '2022-06-26', 'Speeding'),
	  ('A-7', 'PA-15301-40180', '2022-06-28', 'Large Commercial Vehicles'),
	  ('A-8', 'OH-44314-41081', '2022-07-21', 'DUI'),
	  ('A-9', 'WV-26335-38880', '2022-10-05', 'Speeding'),
	  ('A-10', 'OH-45237-39184', '2022-11-14', 'DUI');
