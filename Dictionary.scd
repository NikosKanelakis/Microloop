(
// NOTE: CHANGE /users/nikos/ to your own selected folder.
~soundRoot = "/users/nikos/Desktop"; // the user should set this path to the folder which contains the sounds of the piece.


d = Dictionary.new;
d.add (\ceramic ->
PathName(~soundRoot +/+ "Material/Ceramic/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\hihat ->
	PathName(~soundRoot +/+ "Material/HiHat/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\kick ->
	PathName(~soundRoot +/+ "Material/Kick/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\mainkick ->
	PathName(~soundRoot +/+ "Material/mainkick/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\kitchenap ->
	PathName(~soundRoot +/+ "Material/Kitchen Appliances/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\kitchenut ->
	PathName(~soundRoot +/+ "Material/Kitchen Utensils/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\metal ->
	PathName(~soundRoot +/+ "Material/Metal/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\plastic ->
	PathName(~soundRoot +/+ "Material/Plastic/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\snare ->
	PathName(~soundRoot +/+ "Material/Snare/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\water ->
	PathName(~soundRoot +/+ "Material/Water/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\wood ->
	PathName(~soundRoot +/+ "Material/Wood/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\long->
	PathName(~soundRoot +/+ "Material/Long sounds/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\tampouraki->
	PathName(~soundRoot +/+ "Material/tampouraki/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
d.add(\tonal->
	PathName(~soundRoot +/+ "Material/Tonal/").entries.collect({
	arg sf;
	Buffer.read(s, sf.fullPath);
	});
);
)
