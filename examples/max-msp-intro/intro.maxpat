{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -2664.0, -169.0, 1982.0, 1281.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2496.0, 2791.0, 254.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.545437932014465, 3556.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"pose:-0.1, -0.34, 0.036, -1.5,0,0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2484.0, 2730.0, 250.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 569.545437932014465, 3541.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"pose:0.1, -0.34, 0.036, -1.5,0,0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2484.0, 2674.0, 250.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 554.545437932014465, 3526.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"pose:0.1, -0.18, 0.036, -1.5,0,0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-303",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2473.0, 2623.0, 254.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 539.545437932014465, 3511.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"pose:-0.1, -0.18, 0.036, -1.5,0,0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2437.0, 2572.0, 385.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 524.545437932014465, 3496.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"pose:-0.0065, -0.2633, 0.0326, -1.5826, 0.5644, -0.5356\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1306.0, 2240.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-286",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1251.0, 2379.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1302.0, 2201.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1302.0, 2131.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1291.0, 2225.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-282",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.0, 2364.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1287.0, 2186.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1287.0, 2116.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-225",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1276.0, 2210.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1221.0, 2349.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-233",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1272.0, 2171.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1272.0, 2101.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1261.0, 2248.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1206.0, 2387.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1257.0, 2209.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1257.0, 2139.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1246.0, 2233.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1191.0, 2372.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1242.0, 2194.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1242.0, 2124.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1231.0, 2218.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1176.0, 2357.0, 414.0, 22.0 ],
					"text" : "\"So it would be a symbol like this one\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1227.0, 2179.0, 137.0, 22.0 ],
					"text" : "regexp _ @substitute \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1227.0, 2109.0, 229.0, 22.0 ],
					"text" : "So_it_would_be_a_symbol_like_this_one"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2207.0, 2808.0, 61.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 598.111454755067825, 3550.454421162605286, 63.0, 22.0 ],
					"text" : "r testsend"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2358.554816722869873, 2842.0, 63.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 583.111454755067825, 3535.454421162605286, 63.0, 22.0 ],
					"text" : "s testsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 2207.0, 2842.0, 41.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1938.0, 2869.0, 163.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.799997329711914, 3571.600052773952484, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd movejPose:time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1938.0, 2896.0, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.799997329711914, 3598.800053179264069, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd time:2.000000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-287",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 89.0, 35.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.3296759724617, 107.821321249008179, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 58.0, 111.0, 22.0 ],
									"text" : "r ---freeDriveStatus"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.329680999999994, 40.000000125000042, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.329680999999994, 196.816406124999958, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-287", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-287", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2044.0, 3008.0, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 686.200008869171143, 3642.800053834915161, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ifNoFreeDrive"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2044.0, 3035.0, 63.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 568.111454755067825, 3520.454421162605286, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2880.0, 2485.0, 150.0, 114.0 ],
					"presentation_linecount" : 7,
					"text" : "außenkanten\n\nX = -0.165 bis 0.180\nY= - 1.35 bis -3.80\nHöhe drüber: 0.035\nHöhe drin: 0.0325\nAußrichtung: 0\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2452.5, 2164.0, 150.0, 33.0 ],
					"text" : "1 = home\n2 = above"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2375.304816722869873, 2155.0, 29.5, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2315.5, 2155.0, 29.5, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2260.0, 2155.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2330.0, 2427.0, 395.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 509.545437932014465, 3481.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"joints:-1.0848, -2.0022, -1.4993, -4.3591, -1.6222, -1.3507\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 2350.804816722869873, 2334.0, 54.0, 22.0 ],
					"text" : "sel 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-287",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 89.0, 35.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.3296759724617, 107.821321249008179, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 58.0, 111.0, 22.0 ],
									"text" : "r ---freeDriveStatus"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.329680999999994, 40.000000125000042, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.329680999999994, 196.816406124999958, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-287", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-287", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2213.0, 2498.0, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.200008869171143, 3627.800053834915161, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ifNoFreeDrive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "bang", "bang", "int" ],
					"patching_rect" : [ 2305.0, 2302.5, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 701.400010228157043, 3484.600051701068878, 50.5, 22.0 ],
					"text" : "t i b b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2058.0, 2374.5, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 454.799997329711914, 3556.600052773952484, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd movejJoints:time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2058.0, 2401.5, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 454.799997329711914, 3583.800053179264069, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd time:2.000000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2305.0, 2458.0, 252.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 494.545437932014465, 3466.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"joints:0,-1.5708,0, -1.5708, 0, 0\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2213.0, 2525.0, 63.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 553.111454755067825, 3505.454421162605286, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1260.355131924152374, 928.261055469512939, 281.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 409.659481287002563, 1839.302260875701904, 503.0, 33.0 ],
					"text" : "Attention: if you change the tool settings of the UR3 the POse also changes, as it represents the tooltip (TCP). This does not happen with Joints!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-672",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2116.811881542205811, 1825.00006091594696, 521.985870361328125, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 409.659481287002563, 1839.302260875701904, 502.0, 20.0 ],
					"text" : "Todo: global falg fpr smooth vlaues"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-671",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1451.685509204864502, 2472.5, 279.775303244590759, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 426.0, 2553.0, 192.220930814743042, 40.0 ],
					"text" : "code taken from: https://cycling74.com/forums/double-pendulum-m4l-device"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-669",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 119.0, 1043.0, 709.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 649.0, 486.0, 22.0, 22.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 366.0, 262.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 641.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 440.119350790977478, 694.46664571762085, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 385.119350790977478, 694.46664571762085, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-627",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 385.119350790977478, 628.663890480995178, 74.0, 22.0 ],
									"text" : "unpack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-624",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 601.633122324943542, 531.416179537773132, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-591",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 385.119350790977478, 595.636366009712219, 127.0, 22.0 ],
									"text" : "getattr @attr worldpos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-592",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 461.266143321990967, 669.030864834785461, 163.0, 22.0 ],
									"text" : "jit.anim.node @position 1 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-593",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 461.266143321990967, 628.663890480995178, 183.0, 22.0 ],
									"text" : "jit.anim.node @inherit_position 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-594",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 514.477154970169067, 531.416179537773132, 77.0, 22.0 ],
									"text" : "jit.anim.node"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-596",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.275308847427368, 691.96664571762085, 70.093461871147156, 35.0 ],
									"text" : "torque_impulse 0 0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-602",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 383.284488320350647, 395.636356711387634, 81.0, 22.0 ],
									"text" : "jit.phys.picker"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-603",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 501.63311767578125, 402.975806593894958, 123.571431517601013, 49.0 ],
									"text" : "jit.phys.hinge @position1 -1 0 0 @position2 -1 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 383.284488320350647, 424.994156241416931, 104.285716772079468, 35.0 ],
									"text" : "jit.phys.hinge @position1 1 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-604",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 514.477154970169067, 469.030855536460876, 99.0, 49.0 ],
									"text" : "jit.phys.body @shape cube @scale 1 0.2 0.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-605",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 383.284488320350647, 469.030855536460876, 99.0, 49.0 ],
									"text" : "jit.phys.body @shape cube @scale 1 0.2 0.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-606",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 521.816604852676392, 568.113428950309753, 124.0, 49.0 ],
									"text" : "jit.gl.gridshape @shape cube @gl_color 0.9 0.9 0.9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-607",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 383.284488320350647, 526.829023361206055, 98.571430921554565, 62.0 ],
									"text" : "jit.gl.gridshape @shape cube @gl_color 0.9 0.9 0.9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-608",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 383.284488320350647, 359.856538534164429, 242.0, 22.0 ],
									"text" : "jit.gl.camera @drawto pen @position 0 0 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-609",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 383.284488320350647, 328.663876533508301, 153.0, 22.0 ],
									"text" : "jit.phys.world @drawto pen"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-624", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-605", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-596", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-592", 0 ],
									"source" : [ "obj-591", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-627", 0 ],
									"source" : [ "obj-591", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-592", 0 ],
									"source" : [ "obj-593", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-593", 0 ],
									"order" : 1,
									"source" : [ "obj-594", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-606", 0 ],
									"order" : 0,
									"source" : [ "obj-594", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-605", 0 ],
									"source" : [ "obj-596", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-604", 0 ],
									"source" : [ "obj-603", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-605", 0 ],
									"source" : [ "obj-603", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-594", 0 ],
									"source" : [ "obj-604", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-607", 0 ],
									"source" : [ "obj-605", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-592", 0 ],
									"order" : 1,
									"source" : [ "obj-624", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-594", 0 ],
									"order" : 0,
									"source" : [ "obj-624", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-627", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-627", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-609", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1334.042693138122559, 2476.0, 109.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p doublePendulum"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-668",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1113.155608773231506, 2450.309638857841492, 127.878498196601868, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.0, 2553.0, 203.0, 18.0 ],
					"text" : "PRESS Button to Move!",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-664",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1250.458773732185364, 2439.375059366226196, 39.869158983230591, 39.869158983230591 ]
				}

			}
, 			{
				"box" : 				{
					"enable" : 1,
					"fps" : 30.0,
					"id" : "obj-642",
					"maxclass" : "jit.pworld",
					"name" : "pen",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1106.422069787979126, 2058.715692043304443, 619.101173043251038, 351.284307956695557 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.956516981124878, -49.999993562698364, 169.0, 169.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-632",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1374.157413125038147, 2439.326037526130676, 78.0, 22.0 ],
					"text" : "gravity 0 -4 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-595",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1334.042693138122559, 2439.375059366226196, 29.5, 22.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-338",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 907.368504405021667, 1773.841264247894287, 114.89362907409668, 191.489381790161133 ],
					"pic" : "/Users/jakobkilian/Screenshots/screenshot 2025-09-29 um 15.21.51.jpg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1602.837047576904297, 3473.841442584991455, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.363622188568115, 3385.454425454139709, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-287",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 89.0, 35.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.3296759724617, 107.821321249008179, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 58.0, 111.0, 22.0 ],
									"text" : "r ---freeDriveStatus"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.329680999999994, 40.000000125000042, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.329680999999994, 196.816406124999958, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-287", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-287", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1371.631349563598633, 3614.266989231109619, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.200008869171143, 3627.800053834915161, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ifNoFreeDrive"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-269",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1243.262541770935059, 3431.288246631622314, 153.600002288818359, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 410.0, 3342.72715425491333, 168.478257656097412, 29.0 ],
					"text" : "turning on: go to default in 2s and then start data stream",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1155.319270133972168, 3542.635776042938232, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 454.799997329711914, 3556.600052773952484, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd movejJoints:time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1155.319270133972168, 3568.876913547515869, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 454.799997329711914, 3583.800053179264069, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd time:2.000000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1371.631349563598633, 3542.635776042938232, 157.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 494.545437932014465, 3466.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"joints:0.8667, -1.0091, 2.4155, -1.3418, 0.8636, 0.8125\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-273",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1371.631349563598633, 3640.508126735687256, 63.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 553.111454755067825, 3505.454421162605286, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-274",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1357.446950912475586, 3352.564834117889404, 344.000005125999451, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.99997889995575, 3379.545334219932556, 362.0, 18.0 ],
					"text" : "Enter 4 of the 6 axes manually; use \"%.6f\" to create inlets for X and Y",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-275",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1112.766074180603027, 2752.564771175384521, 193.0, 51.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 411.363622188568115, 2767.727174282073975, 193.0, 51.0 ],
					"text" : "This 2D trackpad displays the current x and y position, but can also be used as experimental input if there is no input available",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-276",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 3392.990370273590088, 205.600003063678741, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 395.0, 3327.72715425491333, 168.478257656097412, 40.0 ],
					"text" : "Activate sending values. Move to default position first, if turned on an wait for 2s",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-277",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 3197.954888820648193, 206.111454755067825, 74.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 395.0, 3211.363522052764893, 206.111454755067825, 74.0 ],
					"text" : "as the output is 0-10000 as well we now have to map to a 2d area within which the robo can safely move from the position it currently is in. For that we scale and clip/limit again and add these values to a Pose string.",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-278",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1132.584360122680664, 2526.195952892303467, 192.220930814743042, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.0, 2538.0, 192.220930814743042, 18.0 ],
					"text" : "IMPORTANT: scale input to 0-10000",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-279",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1334.042693138122559, 3285.898160457611084, 71.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 636.818173170089722, 3299.545337080955505, 71.0, 22.0 ],
					"text" : "clip -0.1 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1474.468239784240723, 3285.898160457611084, 88.0, 22.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 774.090895533561707, 3299.545337080955505, 73.0, 35.0 ],
					"text" : "clip -0.34 -0.18"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-289",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 1809.302260875701904, 521.985870361328125, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 394.659481287002563, 1824.302260875701904, 502.0, 60.0 ],
					"text" : "This is similar to \"Follow Hand Movement\" on the left, as it also takes in 2D data and only acts on a physical 2D plane, defined before starting the patch. It adds a up/down function so that this basic patch can act as a drawing or milling bot, e.g. as in the example video to draw in sand."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-291",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 1773.841264247894287, 265.269457757472992, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 394.659481287002563, 1787.092959880828857, 265.269457757472992, 22.0 ],
					"text" : "2D Drawing / Milling Bot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-299",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1474.468239784240723, 2524.195952892303467, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 749.5, 2572.0, 114.0, 22.0 ],
					"text" : "scale -1 1 0 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-300",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1334.042693138122559, 2524.195952892303467, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 634.0, 2538.0, 121.0, 22.0 ],
					"text" : "scale -1 1 0 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1474.468239784240723, 3242.635744571685791, 145.0, 22.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 774.090895533561707, 3257.727156758308411, 130.0, 35.0 ],
					"text" : "scale 0 10000 -0.18 -0.34"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-320",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1334.042693138122559, 2752.564771175384521, 373.0, 369.99998676776886 ],
					"presentation" : 1,
					"presentation_rect" : [ 634.0, 2766.81808340549469, 373.0, 369.99998676776886 ],
					"rightvalue" : 10000,
					"topvalue" : 10000
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-321",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1334.042693138122559, 3242.635744571685791, 127.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 636.818173170089722, 3257.727156758308411, 127.0, 22.0 ],
					"text" : "scale 0 10000 -0.1 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1334.042693138122559, 3392.990370273590088, 28.800000429153442, 28.800000429153442 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.363622188568115, 3370.454425454139709, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-323",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1546.099452972412109, 3542.635776042938232, 184.800002753734589, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.545437932014465, 3451.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"smoothPose: 0.010140, -0.180400, 0.032, -1.5, 0, 0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1602.837047576904297, 3507.174779415130615, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.363622188568115, 3402.272606134414673, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-325",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1334.042693138122559, 3326.323696613311768, 298.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 577.489907741546631, 3401.272605776786804, 363.0, 20.0 ],
					"text" : "sprintf /ur3/set/cmd \"\\\"smoothPose: %.6f, %.6f, 0.032, -1.5, 0, 0\\\"\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1995.652573585510254, 1558.695964336395264, 342.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 484.659481287002563, 1914.302260875701904, 503.0, 20.0 ],
					"text" : "clear list"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-244",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1843.478630065917969, 1556.522050857543945, 37.641397655010223, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 473.0, 257.0, 35.0, 22.0 ],
					"text" : "clear",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-243",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1995.652573585510254, 1523.91334867477417, 342.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.659481287002563, 1899.302260875701904, 503.0, 20.0 ],
					"text" : "save/load list to/from a json file next to this max file"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-241",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1910.869947910308838, 1521.739435195922852, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 521.0, 230.0, 31.0, 22.0 ],
					"text" : "load",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-242",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1843.478630065917969, 1521.739435195922852, 34.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 474.0, 230.0, 34.0, 22.0 ],
					"text" : "save",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1995.652573585510254, 1454.348117351531982, 342.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.659481287002563, 1899.302260875701904, 503.0, 20.0 ],
					"text" : "call element and move there (index or key)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-239",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1910.869947910308838, 1452.174203872680664, 45.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 551.0, 287.0, 52.0, 22.0 ],
					"text" : "get top",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-240",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1843.478630065917969, 1452.174203872680664, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 536.0, 272.0, 52.0, 22.0 ],
					"text" : "get 1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1995.652573585510254, 1489.130733013153076, 342.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 454.659481287002563, 1884.302260875701904, 503.0, 20.0 ],
					"text" : "remove this element (index or key)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-236",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1910.869947910308838, 1489.130733013153076, 69.0, 22.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 536.0, 272.0, 52.0, 35.0 ],
					"text" : "remove top",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-235",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1843.478630065917969, 1489.130733013153076, 59.0, 22.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 521.0, 257.0, 52.0, 35.0 ],
					"text" : "remove 1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1843.478630065917969, 1410.869847774505615, 342.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 439.659481287002563, 1869.302260875701904, 503.0, 20.0 ],
					"text" : "These are all commands available:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1893.478640079498291, 1302.174173831939697, 65.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1893.478640079498291, 1302.174173831939697, 65.0, 22.0 ],
					"text" : "get bottom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1843.478630065917969, 1302.174173831939697, 45.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1843.478630065917969, 1302.174173831939697, 45.0, 22.0 ],
					"text" : "get top"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1843.478630065917969, 1336.956789493560791, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1843.478630065917969, 1336.956789493560791, 73.0, 22.0 ],
					"text" : "s PoseCMD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1841.30471658706665, 1247.826336860656738, 343.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 424.659481287002563, 1854.302260875701904, 503.0, 33.0 ],
					"text" : "You can also call list elements by name/key. If an element with the name exists, it would be called and the robo moves there"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1856.522110939025879, 1139.13066291809082, 41.157896280288696, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 424.659481287002563, 1854.302260875701904, 533.0, 20.0 ],
					"text" : "Start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1897.826467037200928, 1121.739355087280273, 52.631580829620361, 52.631580829620361 ],
					"presentation" : 1,
					"presentation_rect" : [ 1897.826467037200928, 1121.739355087280273, 52.631580829620361, 52.631580829620361 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2341.304816722869873, 1136.956749439239502, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2341.304816722869873, 1136.956749439239502, 35.0, 22.0 ],
					"text" : "get 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2256.522191047668457, 1136.956749439239502, 67.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2256.522191047668457, 1136.956749439239502, 67.0, 22.0 ],
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2208.696094512939453, 1136.956749439239502, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2208.696094512939453, 1136.956749439239502, 35.0, 22.0 ],
					"text" : "get 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2126.087382316589355, 1136.956749439239502, 67.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2126.087382316589355, 1136.956749439239502, 67.0, 22.0 ],
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2076.087372303009033, 1136.956749439239502, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2076.087372303009033, 1136.956749439239502, 35.0, 22.0 ],
					"text" : "get 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2013.043881416320801, 1136.956749439239502, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2013.043881416320801, 1136.956749439239502, 47.0, 22.0 ],
					"text" : "delay 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1965.217784881591797, 1136.956749439239502, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1965.217784881591797, 1136.956749439239502, 35.0, 22.0 ],
					"text" : "get 5"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2341.304816722869873, 1186.956759452819824, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2341.304816722869873, 1186.956759452819824, 73.0, 22.0 ],
					"text" : "s PoseCMD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1841.30471658706665, 1091.304566383361816, 340.384626746177673, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 409.659481287002563, 1839.302260875701904, 503.0, 20.0 ],
					"text" : "With this you can easily programm a sequence of movements:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.00044059753418, 1010.869767665863037, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2200.00044059753418, 1010.869767665863037, 73.0, 22.0 ],
					"text" : "s PoseCMD"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgcolor2" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color1" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.728545315984307, 0.72854514435665, 0.728545189205699, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-174",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.00044059753418, 978.261065483093262, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2200.00044059753418, 978.261065483093262, 35.0, 22.0 ],
					"text" : "get 0",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1836.956889629364014, 973.913238525390625, 340.384626746177673, 60.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 394.659481287002563, 1824.302260875701904, 503.0, 47.0 ],
					"text" : "By sending get Commands into the Joints or Pose list-boxes, you can call an element of the list and let the robot arm move to these coordinates: simply send \"get\" and the list index. e.g. \"get 0\" would call the first element of the list."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-170",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1836.956889629364014, 934.782795906066895, 265.269457757472992, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 394.659481287002563, 1787.092959880828857, 265.269457757472992, 22.0 ],
					"text" : "Interact with the List Boxes"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1635.294185876846313, 877.404753684997559, 71.0, 22.0 ],
					"text" : "r PoseCMD"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 934.470026731491089, 877.404753684997559, 75.0, 22.0 ],
					"text" : "r JointsCMD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1123.200016736984253, 864.154753684997559, 98.0, 33.0 ],
					"text" : "This box is always Pose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 414.669656038284302, 864.154753684997559, 98.0, 33.0 ],
					"text" : "This box is always Joints"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-155",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 728.69999885559082, 3436.600051373243332, 153.600002288818359, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 3342.72715425491333, 168.478257656097412, 18.0 ],
					"text" : "turning off: stop data stream",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 886.400013208389282, 3434.600051373243332, 51.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 886.400013208389282, 3434.600051373243332, 51.0, 22.0 ],
					"text" : "match 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 686.400010228157043, 3434.600051373243332, 51.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 686.400010228157043, 3434.600051373243332, 51.0, 22.0 ],
					"text" : "match 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 800.800011932849884, 3473.100051701068878, 61.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 800.800011932849884, 3473.100051701068878, 61.0, 22.0 ],
					"text" : "pipe 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 886.400013208389282, 3472.100051701068878, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.363622188568115, 3370.454425454139709, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-287",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 89.0, 35.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.3296759724617, 107.821321249008179, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 58.0, 111.0, 22.0 ],
									"text" : "r ---freeDriveStatus"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.329680999999994, 40.000000125000042, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.329680999999994, 196.816406124999958, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-287", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-287", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 656.200008869171143, 3612.800053834915161, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 656.200008869171143, 3612.800053834915161, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ifNoFreeDrive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "bang", "bang", "bang" ],
					"patching_rect" : [ 686.400010228157043, 3469.600051701068878, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 686.400010228157043, 3469.600051701068878, 50.5, 22.0 ],
					"text" : "t i b b b"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-109",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 527.200007855892181, 3431.100051373243332, 153.600002288818359, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 395.0, 3327.72715425491333, 168.478257656097412, 29.0 ],
					"text" : "turning on: go to default in 2s and then start data stream",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.799997329711914, 3541.600052773952484, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 439.799997329711914, 3541.600052773952484, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd movejJoints:time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.799997329711914, 3568.800053179264069, 208.000003099441528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 439.799997329711914, 3568.800053179264069, 208.000003099441528, 22.0 ],
					"text" : "/ur3/set/cmd time:2.000000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 667.0, 633.324533015489578, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.200008869171143, 3541.600052773952484, 157.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.545437932014465, 3451.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"joints:0.8667, -1.0091, 2.4155, -1.3418, 0.8636, 0.8125\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 656.200008869171143, 3639.200054228305817, 63.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.111454755067825, 3490.454421162605286, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 382.831979215145111, 579.090888381004333, 176.865679442882538, 22.0 ],
					"text" : "Send & Receive",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 642.310101985931396, 3352.000049948692322, 344.000005125999451, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 589.99997889995575, 3364.545334219932556, 362.0, 18.0 ],
					"text" : "Enter 4 of the 6 axes manually; use \"%.6f\" to create inlets for X and Y",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-4",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.363622188568115, 2752.727174282073975, 193.0, 51.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 396.363622188568115, 2752.727174282073975, 193.0, 51.0 ],
					"text" : "This 2D trackpad displays the current x and y position, but can also be used as experimental input if there is no input available",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-268",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.255725845694542, 3391.24534597992897, 205.600003063678741, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 380.0, 3312.72715425491333, 168.478257656097412, 40.0 ],
					"text" : "Activate sending values. Move to default position first, if turned on an wait for 2s",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-267",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 3196.363522052764893, 206.111454755067825, 74.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 380.0, 3196.363522052764893, 206.111454755067825, 74.0 ],
					"text" : "as the output is 0-10000 as well we now have to map to a 2d area within which the robo can safely move from the position it currently is in. For that we scale and clip/limit again and add these values to a Pose string.",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-264",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2523.0, 192.220930814743042, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 2523.0, 192.220930814743042, 18.0 ],
					"text" : "IMPORTANT: scale input to 0-10000",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 3285.127157390117645, 71.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 621.818173170089722, 3284.545337080955505, 71.0, 22.0 ],
					"text" : "clip -0.3 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 759.090895533561707, 3284.545337080955505, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 759.090895533561707, 3284.545337080955505, 73.0, 22.0 ],
					"text" : "clip 0.05 0.3"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-261",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 798.0, 2478.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 798.0, 2478.0, 194.0, 18.0 ],
					"text" : "add offset"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-260",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2430.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 2430.0, 194.0, 18.0 ],
					"text" : "actual x and y values",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-259",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2390.0, 194.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 396.0, 2390.0, 194.0, 29.0 ],
					"text" : "an make them \"0\" in order to return to home, if nothing is in the range",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-258",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2311.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 2311.0, 194.0, 18.0 ],
					"text" : "sort out \"nan\"",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-257",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2241.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 2241.0, 194.0, 18.0 ],
					"text" : "only get last two values (x and y)",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-256",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2137.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 2137.0, 194.0, 18.0 ],
					"text" : "Use cl or av?",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-255",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2092.0, 197.0, 40.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 396.0, 2092.0, 197.0, 40.0 ],
					"text" : "A c++ app reads the LIDAR calculates the closes point (cl) and an average of all points (av) and sends them via OSC",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-254",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 1988.0, 194.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 1988.0, 194.0, 18.0 ],
					"text" : "(de)activate receiving data",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.659481287002563, 1809.302260875701904, 514.400007665157318, 127.0 ],
					"presentation" : 1,
					"presentation_linecount" : 9,
					"presentation_rect" : [ 379.659481287002563, 1809.302260875701904, 502.0, 127.0 ],
					"text" : "Be Careful and read first. Sending wrong data can cause the robo to move fast and/or crash!\nThis block expects data from a LIDAR over OSC in the following format: \"/lidar/av distance angle x-coordinate y-coordinate\" while the LIDAR itself is positioned at x=0 and y=0.\nYou could use any 2D input data e.g. from webcams tracking a head or hand. Simply swap (1) and enter your X and Y values mapped from 0 to 10,000.\n\nIt makes sense to define a \"Joints\" position before starting and going there slowly before activating the data stream, as there are always multiple joint positions for the robo to reach a pose in cartesian space. See (3) bottom"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-252",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.659481287002563, 1772.092959880828857, 265.269457757472992, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.659481287002563, 1772.092959880828857, 265.269457757472992, 22.0 ],
					"text" : "Follow Hand Movement"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 724.0, 2143.0, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 724.0, 2143.0, 29.5, 22.0 ],
					"text" : "!= 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.0, 2062.0, 32.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 610.0, 2062.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-230",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 2020.0, 194.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 396.0, 2020.0, 194.0, 29.0 ],
					"text" : "wait for OSC data on port 700\nI used a SlamTec S1M1 360° LIDAR",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.0, 1985.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 610.0, 1985.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 2388.0, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2388.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 752.0, 2388.0, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2388.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 752.0, 2476.0, 36.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2476.0, 36.0, 22.0 ],
					"text" : "+ 16."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 734.5, 2557.0, 114.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 734.5, 2557.0, 114.0, 22.0 ],
					"text" : "scale 0 -50 0 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 2523.0, 121.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2523.0, 121.0, 22.0 ],
					"text" : "scale -30 30 0 10000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-144",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 752.0, 2427.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2427.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 789.0, 2388.0, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 789.0, 2388.0, 73.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 752.0, 2271.0, 59.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2271.0, 59.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 752.0, 2350.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2350.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 752.0, 2309.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 2309.0, 47.0, 22.0 ],
					"text" : "sel nan"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-118",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.0, 2427.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2427.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 654.0, 2388.0, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 654.0, 2388.0, 73.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 2271.0, 59.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2271.0, 59.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.0, 2350.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2350.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 619.0, 2309.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2309.0, 47.0, 22.0 ],
					"text" : "sel nan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 738.0, 2102.0, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 738.0, 2102.0, 107.0, 22.0 ],
					"text" : "OSC-route /lidar/cl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.0, 2192.0, 32.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 598.0, 2192.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 2134.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 835.0, 2134.0, 150.0, 20.0 ],
					"text" : "Average?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.0, 2132.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 810.0, 2132.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 724.0, 2192.0, 32.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 724.0, 2192.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 624.0, 2018.0, 97.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 624.0, 2018.0, 97.0, 22.0 ],
					"text" : "udpreceive 7000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 598.0, 2237.0, 61.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 598.0, 2237.0, 61.0, 22.0 ],
					"text" : "unjoin 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 610.0, 2102.0, 111.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 610.0, 2102.0, 111.0, 22.0 ],
					"text" : "OSC-route /lidar/av"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2552.856990694999695, 3481.428363919258118, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2535.714134573936462, 3288.571232557296753, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2535.714134573936462, 3321.428373456001282, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2535.714134573936462, 3418.571224808692932, 442.0, 22.0 ],
					"text" : "/ur3/set/cmd \"smoothPose:-0.087583, -0.3108, 0.0053, -1.0693, 1.0636, -1.2962\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2652.856984734535217, 3307.142660021781921, 154.0, 22.0 ],
					"text" : "scale 0 127 -0.1773 0.2025"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2659.999841451644897, 3141.428384184837341, 432.710277020931244, 74.766354560852051 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2652.856984734535217, 3348.571228981018066, 460.0, 22.0 ],
					"text" : "sprintf /ur3/set/cmd \"\\\"smoothPose:%.6f, -0.3108, 0.0053, -1.0693, 1.0636, -1.2962\\\"\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 759.090895533561707, 3242.727156758308411, 130.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 759.090895533561707, 3242.727156758308411, 130.0, 22.0 ],
					"text" : "scale 0 10000 0.05 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.0, 2751.81808340549469, 373.0, 369.99998676776886 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.0, 2751.81808340549469, 373.0, 369.99998676776886 ],
					"rightvalue" : 10000,
					"topvalue" : 10000
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 3242.727156758308411, 127.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 621.818173170089722, 3242.727156758308411, 127.0, 22.0 ],
					"text" : "scale 0 10000 -0.3 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.0, 3391.345345765352249, 28.800000429153442, 28.800000429153442 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.363622188568115, 3355.454425454139709, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 831.200012385845184, 3541.600052773952484, 184.800002753734589, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.545437932014465, 3436.363513469696045, 531.944469809532166, 22.0 ],
					"text" : "/ur3/set/cmd \"smoothPose: -0.038640, -0.4471, 0.150125, 1.308, 0.078, -2.8527\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 886.400013208389282, 3507.200052261352539, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.363622188568115, 3387.272606134414673, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 3326.200049102306366, 367.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 562.489907741546631, 3386.272605776786804, 363.0, 20.0 ],
					"text" : "sprintf /ur3/set/cmd \"\\\"smoothPose: %.6f, -0.4471, %.6f, 1.308, 0.078, -2.8527\\\"\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.044656038284302, 792.85713529586792, 53.0, 22.0 ],
					"text" : "r rebang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1046.925585031509399, 798.809516191482544, 53.0, 22.0 ],
					"text" : "r rebang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 777.380944967269897, 434.782157093286514, 55.0, 22.0 ],
					"text" : "s rebang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 774.999992609024048, 388.353586107492447, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1046.925585031509399, 830.952373027801514, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1046.925585031509399, 861.904753684997559, 65.625, 37.5 ],
					"tabs" : [ "Joints", "Pose" ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.044656038284302, 830.952373027801514, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 347.044656038284302, 861.904753684997559, 65.625, 37.5 ],
					"tabs" : [ "Joints", "Pose" ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 2,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "GetPoseOrJoints.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 1066.355131924152374, 920.238086462020874, 669.0, 697.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1027.65956711769104, 731.914888381958008, 669.0, 697.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-436",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1601.444128274917603, 426.49570107460022, 97.0, 22.0 ],
					"text" : "r ---setFreeDrive"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1603.043479442596436, 503.570987850427628, 113.0, 22.0 ],
					"text" : "s ---freeDriveStatus"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 481.818164587020874, 674.233622461557388, 75.0, 22.0 ],
					"text" : "s oscreceive"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 631.953283309936523, 585.829026460647583, 61.0, 22.0 ],
					"text" : "r oscsend"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 632.000009417533875, 667.200009942054749, 131.0, 22.0 ],
					"text" : "udpsend 10.3.3.1 8000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.818164587020874, 633.324533015489578, 108.0, 22.0 ],
					"text" : "udpreceive 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1106.401649236679077, 584.974325656890869, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 531.707329750061035, 621.951234340667725, 214.529901742935181, 22.0 ],
					"text" : "ms for last sample"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-91",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1051.70079779624939, 585.829026460647583, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.878060221672058, 621.951234340667725, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1326.46761628985405, 620.512783527374268, 97.0, 22.0 ],
					"text" : "append samples"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1326.46761628985405, 593.162357807159424, 121.0, 22.0 ],
					"text" : "prepend ms over last"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1106.401649236679077, 619.658082723617554, 214.529901742935181, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 531.707329750061035, 646.341478824615479, 214.529901742935181, 22.0 ],
					"text" : "ms over last 5 samples"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1051.783199340105057, 620.512783527374268, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.878060221672058, 646.341478824615479, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 985.470026731491089, 547.863215208053589, 208.53988516330719, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 480.0, 593.639639616012573, 285.0, 22.0 ],
					"text" : "bang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.27843137254902, 0.27843137254902, 0.27843137254902, 1.0 ],
					"blinkcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 985.470026731491089, 436.209286689758301, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 361.216216206550598, 591.936936914920807, 24.410072386264801, 24.410072386264801 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 985.470026731491089, 512.972237139940262, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 985.470026731491089, 476.923048496246338, 129.0, 22.0 ],
					"text" : "/ur3/set/cmd getStatus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1014.291965544223785, 438.209286689758301, 190.598279237747192, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.945945918560028, 594.639639616012573, 74.054054081439972, 20.0 ],
					"text" : "get status:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 979.0, 397.0, 265.269457757472992, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 555.0, 434.944218993186951, 22.0 ],
					"text" : "Status Message / Roundtrip",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1800.869584321975708, 503.570987850427628, 251.824816167354584, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 439.795534908771515, 333.215612590312958, 251.824816167354584, 33.0 ],
					"text" : "Does not work, while a blocking smoothPose or smoothJoints data stream is sent."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1708.652196168899536, 431.24999588727951, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1868.949717104434967, 438.356151580810547, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1729.223693788051605, 503.652953326702118, 63.0, 22.0 ],
					"text" : "s oscsend"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"checkedcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-218",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1601.444128274917603, 461.100443124771118, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.483270049095154, 336.933084547519684, 25.179857015609741, 25.179857015609741 ],
					"uncheckedcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1607.391305923461914, 399.223152309656143, 176.865679442882538, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 344.275362253189087, 285.0, 435.687713384628296, 22.0 ],
					"text" : "Freedrive",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1860.273918271064758, 462.100443124771118, 125.0, 22.0 ],
					"text" : "/ur3/set/cmd free:stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1708.652196168899536, 459.817338168621063, 125.0, 22.0 ],
					"text" : "/ur3/set/cmd free:start"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 14.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 433.0, 481.0, 167.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 403.558558523654938, 501.081081032752991, 147.741011619567871, 22.0 ],
					"text" : "Incoming Message"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 14.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.0, 397.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 681.249400585889816, 435.743494391441345, 54.676260948181152, 22.0 ],
					"text" : "refresh"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.482352941176471, 0.482352941176471, 0.482352941176471, 1.0 ],
					"blinkcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 738.953283309936523, 396.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 738.87021592259407, 435.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.27843137254902, 0.27843137254902, 0.27843137254902, 1.0 ],
					"blinkcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.79106205701828, 480.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 367.522522509098053, 499.279279232025146, 25.003430791199207, 25.003430791199207 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 14.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 667.453283309936523, 496.0, 167.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 402.657657623291016, 440.720720708370209, 94.24460768699646, 22.0 ],
					"text" : "Bridge online"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 14.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 667.453283309936523, 458.0, 167.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 402.657657623291016, 471.351351320743561, 149.0, 22.0 ],
					"text" : "UR3 & URscript online"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"checkedcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-18",
					"ignoreclick" : 1,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 638.827356576919556, 495.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 367.522522509098053, 438.918918907642365, 24.666508086025715, 24.666508086025715 ],
					"uncheckedcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 391.79106205701828, 406.716435849666595, 176.865679442882538, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.351659595966339, 394.774774789810181, 434.572471797466278, 22.0 ],
					"text" : "Status",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"checkedcolor" : [ 0.482352941176471, 0.815686274509804, 0.533333333333333, 1.0 ],
					"id" : "obj-96",
					"ignoreclick" : 1,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 634.95525074005127, 457.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 367.522522509098053, 468.648648619651794, 25.003430791199207, 25.003430791199207 ],
					"uncheckedcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 220.0, 342.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -20.0, 267.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 393.0, -16.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 18.0, 270.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 437.0, 302.0, 53.0, 22.0 ],
									"text" : "sel false"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 478.0, 375.0, 178.0, 22.0 ],
									"text" : "495.612791"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 501.0, 405.0, 152.0, 33.0 ],
									"text" : "if false: URPi is on, but UR3 not"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 474.0, 346.0, 63.0, 22.0 ],
									"text" : "metro 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 542.0, 347.0, 150.0, 20.0 ],
									"text" : "check every 0.5s"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 435.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 438.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 437.0, 405.0, 45.0, 22.0 ],
									"text" : "< 1100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patching_rect" : [ 437.0, 375.0, 35.0, 22.0 ],
									"text" : "timer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 437.0, 345.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 115.0, 302.0, 48.0, 22.0 ],
									"text" : "sel true"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 262.0, 49.0, 22.0, 22.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 364.0, 178.0, 22.0 ],
									"text" : "495.612791"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 394.0, 152.0, 33.0 ],
									"text" : "if the time sincs last online flag is more than 1.1s "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 152.0, 335.0, 63.0, 22.0 ],
									"text" : "metro 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 336.0, 150.0, 20.0 ],
									"text" : "check every 0.5s"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-75",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 424.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 211.0, 150.0, 60.0 ],
									"text" : "send the getOnlien request to URPi\nand receive fitting answers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 109.0, 150.0, 20.0 ],
									"text" : "trigger every 1s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 84.0, 427.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 115.0, 394.0, 45.0, 22.0 ],
									"text" : "< 1100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patching_rect" : [ 115.0, 364.0, 35.0, 22.0 ],
									"text" : "timer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 115.0, 334.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 4.0, 302.0, 44.776121377944946, 22.0 ],
									"text" : "true"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 84.0, 271.0, 137.0, 22.0 ],
									"text" : "OSC-route /ur3/isOnline"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.0, 235.0, 73.0, 22.0 ],
									"text" : "r oscreceive"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 107.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.0, 176.0, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 393.0, 21.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 56.0, 210.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 393.0, 55.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 96.0, 108.0, 69.0, 22.0 ],
									"text" : "metro 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 143.0, 129.0, 22.0 ],
									"text" : "/ur3/set/cmd getOnline"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.984313725490196, 0.788235294117647, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.0, 211.0, 63.0, 22.0 ],
									"text" : "s oscsend"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"order" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 2,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 3,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"order" : 2,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 1,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"order" : 1,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 0,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 2,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"order" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"order" : 1,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"order" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 440.697658658027649, 437.209286689758301, 119.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "patcher isUR3Online"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1255.023174494504929, 453.846126794815063, 78.0, 22.0 ],
					"text" : "sel getStatus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1255.023174494504929, 426.49570107460022, 135.0, 22.0 ],
					"text" : "OSC-route /ur3/set/cmd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1368.605831682682037, 496.461536169052124, 125.0, 22.0 ],
					"text" : "OSC-route /ur3/status"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1255.023174494504929, 399.145275354385376, 61.0, 22.0 ],
					"text" : "r oscsend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1299.46761628985405, 481.196552515029907, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1329.382144421339035, 481.196552515029907, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.749019607843137, 0.890196078431372, 0.925490196078431, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1368.605831682682037, 458.0, 73.0, 22.0 ],
					"text" : "r oscreceive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1353.313766926527023, 547.863215208053589, 98.0, 33.0 ],
					"text" : "get mean value between \"clear\"s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1342.202656477689743, 514.529883861541748, 43.0, 23.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 1299.46761628985405, 558.974325656890869, 46.0, 24.0 ],
					"text" : "mean"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"patching_rect" : [ 1299.46761628985405, 516.239285469055176, 35.0, 22.0 ],
					"text" : "timer"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 2,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-29",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "GetPoseOrJoints.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 370.357156038284302, 920.238086462020874, 669.0, 697.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 731.914888381958008, 669.0, 697.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-82",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.373150885105133, 569.090888738632202, 529.90653795003891, 150.467288553714752 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 758.181804656982422, 3144.545342087745667, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 758.181804656982422, 3144.545342087745667, 30.0, 33.0 ],
					"text" : "3",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-171",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1823.913408756256104, 928.261055469512939, 629.629659652709961, 673.148180246353149 ],
					"presentation" : 1,
					"presentation_rect" : [ 383.5, 1780.0, 668.181794285774231, 1759.999937057495117 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 788.181803584098816, 3144.545342087745667, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 788.181803584098816, 3144.545342087745667, 234.0, 33.0 ],
					"text" : "Map X and Y to a plane the robot can reach physcially"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-63",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 3144.545342087745667, 642.181803584098816, 522.400007784366608 ],
					"presentation" : 1,
					"presentation_rect" : [ 380.0, 3144.545342087745667, 642.181803584098816, 366.363623261451721 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 758.181804656982422, 2627.27263331413269, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 758.181804656982422, 2627.27263331413269, 30.0, 33.0 ],
					"text" : "2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 788.181803584098816, 2627.27263331413269, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 788.181803584098816, 2627.27263331413269, 234.0, 33.0 ],
					"text" : "Show mapped input values on a 2D trackpad. Can be used for input as well"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 2627.27263331413269, 642.181803584098816, 505.454527378082275 ],
					"presentation" : 1,
					"presentation_rect" : [ 380.0, 2627.27263331413269, 642.181803584098816, 505.454527378082275 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 759.0, 1974.0, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 759.0, 1974.0, 30.0, 33.0 ],
					"text" : "1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"hint" : "This node constantly checks how much time has passed, since the last online flag by the UR3 robo arm and the URPi. It also blinks, when new messages arrive.",
					"id" : "obj-7",
					"maxclass" : "hint",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 823.036698818206787, 387.314707905054092, 82.242990016937256, 150.467288553714752 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 420.0, 434.408621311187744, 120.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.373150885105133, 387.132113456726074, 529.90653795003891, 150.467288553714752 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 420.0, 435.0, 120.074344217777252 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"hint" : "Starts and stops freedrive mode. Note: when one client (also other computers in the network) send smoothPose or smoothJoints data streams, the robo arm will not look for these commands, because it has to stay in a closed loop to avoid jittery movement.",
					"id" : "obj-216",
					"maxclass" : "hint",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2072.608739376068115, 386.179672867059708, 48.598130464553833, 154.477618753910065 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 315.0, 435.483890175819397, 69.892476201057434 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-217",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1590.0, 388.353586107492447, 529.716438055038452, 152.985081374645233 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 315.0, 434.963075637817383, 69.516725599765778 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"hint" : "Click on \"get status\" to request a status report including the roundtrip time from URPI to UR3 and back. By measuring the time from sending the request until reaching the report the full roundtrip from this app to the UR3 and back can also be calculated and averaged.",
					"id" : "obj-68",
					"maxclass" : "hint",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1450.572227418422699, 384.806532144546509, 58.541050016880035, 275.389648973941803 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 579.324324309825897, 435.483890175819397, 107.526886463165283 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 969.176895797252655, 387.132113456726074, 539.737602531909943, 273.680247366428375 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 579.324324309825897, 435.483890175819397, 107.526886463165283 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 789.0, 1974.0, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 789.0, 1974.0, 234.0, 33.0 ],
					"text" : "Retrieve data from the sensor and map X and Y to 0 to 10,000 for consistency."
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-5",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 1974.0, 642.262133479118347, 641.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 380.0, 1974.0, 642.262133479118347, 641.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-251",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.5, 1765.0, 667.781803965568542, 1916.000028550624847 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.5, 1765.0, 668.181794285774231, 1759.999937057495117 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-326",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1474.468239784240723, 3145.47261381149292, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 773.181804656982422, 3159.545342087745667, 30.0, 33.0 ],
					"text" : "3",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-327",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1502.837037086486816, 3145.47261381149292, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 803.181803584098816, 3159.545342087745667, 234.0, 33.0 ],
					"text" : "Map X and Y to a plane the robot can reach physcially"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-328",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 3145.47261381149292, 642.181803584098816, 522.400007784366608 ],
					"presentation" : 1,
					"presentation_rect" : [ 395.0, 3159.545342087745667, 642.181803584098816, 366.363623261451721 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-329",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1474.468239784240723, 2628.451282978057861, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 773.181804656982422, 2642.27263331413269, 30.0, 33.0 ],
					"text" : "2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-330",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1502.837037086486816, 2628.451282978057861, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 803.181803584098816, 2642.27263331413269, 234.0, 33.0 ],
					"text" : "Show mapped input values on a 2D trackpad. Can be used for input as well"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-331",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.744795799255371, 2628.451282978057861, 642.181803584098816, 505.454527378082275 ],
					"presentation" : 1,
					"presentation_rect" : [ 395.0, 2642.27263331413269, 642.181803584098816, 505.454527378082275 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-332",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1474.468239784240723, 1973.841285228729248, 30.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 774.0, 1989.0, 30.0, 33.0 ],
					"text" : "1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.38 ],
					"bubble_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-333",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1504.964696884155273, 1973.841285228729248, 234.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 804.0, 1989.0, 234.0, 33.0 ],
					"text" : "Get X and Y of a Double Pendulum and feed it into the 0-10000 trackpad"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.39 ],
					"bordercolor" : [ 0.172549019607843, 0.466666666666667, 0.494117647058824, 0.0 ],
					"id" : "obj-334",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1096.702563405036926, 1974.0, 642.262133479118347, 641.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 2004.0, 642.262133479118347, 641.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"id" : "obj-335",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1084.343011856079102, 1767.258410453796387, 667.781803965568542, 1916.000028550624847 ],
					"presentation" : 1,
					"presentation_rect" : [ 398.5, 1795.0, 668.181794285774231, 1759.999937057495117 ],
					"proportion" : 0.39
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-121", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-121", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"source" : [ "obj-127", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-127", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-127", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-135", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"order" : 1,
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"order" : 0,
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-159", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 744.0, 2613.0, 744.0, 2613.0, 744.0, 2736.0, 982.5, 2736.0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"order" : 1,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"order" : 0,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"order" : 1,
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"order" : 0,
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"order" : 1,
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"order" : 0,
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 1 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 1 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 2,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"order" : 0,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"order" : 1,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 1 ],
					"source" : [ "obj-225", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 0,
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-225", 0 ],
					"source" : [ "obj-233", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-233", 0 ],
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-324", 0 ],
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-273", 0 ],
					"source" : [ "obj-265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-325", 0 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-325", 1 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 1 ],
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 0 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 1 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-287", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 1 ],
					"midpoints" : [ 1483.968239784240723, 2614.749064922332764, 1459.188056945800781, 2614.749064922332764, 1459.188056945800781, 2672.611447215080261, 1697.542693138122559, 2672.611447215080261 ],
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-305", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 1697.542693138122559, 3139.294518947601318, 1463.551703453063965, 3139.294518947601318, 1463.551703453063965, 3229.749064922332764, 1483.968239784240723, 3229.749064922332764 ],
					"source" : [ "obj-320", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 0 ],
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"source" : [ "obj-322", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-323", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-323", 0 ],
					"source" : [ "obj-324", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-323", 1 ],
					"midpoints" : [ 1343.542693138122559, 3379.349064290523529, 1721.399455726146698, 3379.349064290523529 ],
					"source" : [ "obj-325", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-36", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-36", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-41", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-41", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"source" : [ "obj-436", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"midpoints" : [ 628.5, 3377.599999368190765, 1006.500015139579773, 3377.599999368190765 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 1 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-669", 0 ],
					"source" : [ "obj-595", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-669", 1 ],
					"source" : [ "obj-632", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-595", 0 ],
					"source" : [ "obj-664", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-299", 0 ],
					"source" : [ "obj-669", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"source" : [ "obj-669", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 982.5, 3137.545454025268555, 748.363646507263184, 3137.545454025268555, 748.363646507263184, 3228.0, 768.590895533561707, 3228.0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-94", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-20::obj-49" : [ "number", "number", 0 ],
			"obj-29::obj-49" : [ "number[1]", "number", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-20::obj-49" : 				{
					"parameter_initial" : 2000,
					"parameter_initial_enable" : 1
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "GetPoseOrJoints.maxpat",
				"bootpath" : "~/Documents/GitHub/KISD/mqtt-ur3-bridge/examples",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "extractPoseDimensions.js",
				"bootpath" : "~/Documents/GitHub/KISD/mqtt-ur3-bridge/examples",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "savedPositions.js",
				"bootpath" : "~/Documents/GitHub/KISD/mqtt-ur3-bridge/examples",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "screenshot 2025-09-29 um 15.21.51.jpg",
				"bootpath" : "~/Screenshots",
				"patcherrelativepath" : "../../../../../Screenshots",
				"type" : "JPEG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
