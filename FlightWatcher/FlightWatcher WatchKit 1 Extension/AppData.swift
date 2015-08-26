//
//  AppData.swift
//  FlightWatcher
//
//  Created by Jan Wasgint on 23.08.15.
//  Copyright © 2015 JanWasgint. All rights reserved.
//

import Foundation

// airport names
let airportNameMuc = "Munich (MUC)"
let airportNameFra = "Frankfurt (FRA)"
let airportNameTxl = "Berlin (TXL)"



// MUC incoming airplanes
let airplaneMuc01 = Airplane(airplaneName: "Airbus A320-200", airplaneImageName: "A320_200_LH.png")
let airplaneMuc02 = Airplane(airplaneName: "Embraer ERJ 195", airplaneImageName: "E190_5_LH.png")
let airplaneMuc03 = Airplane(airplaneName: "Airbus A320-200", airplaneImageName: "A320_200_LH.png")
let airplaneMuc04 = Airplane(airplaneName: "Airbus A330-300", airplaneImageName: "A333.png")
let airplaneMuc05 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_LH.png")

// MUC outgoing airplanes
let airplaneMuc06 = Airplane(airplaneName: "Airbus A320-200", airplaneImageName: "A320_200_VY.png")
let airplaneMuc07 = Airplane(airplaneName: "Airbus A320-200", airplaneImageName: "A320_200_BA.png")
let airplaneMuc08 = Airplane(airplaneName: "Airbus A321 Sharklets",
    airplaneImageName: "A321_Sharklets.png")
let airplaneMuc09 = Airplane(airplaneName: "Airbus A318-100", airplaneImageName: "A318_100_RO.png")
let airplaneMuc10 = Airplane(airplaneName: "Boeing 767-300", airplaneImageName: "B763.png")


// MUC incoming flights
let flightMuc01 = Flight(flightCode: "LH 2421",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(0)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(-300)),
    fromCity: "Stockholm (ARN)", toCity: airportNameMuc,
    terminalArea: "T2", flightState: "Landed",
    airplane: airplaneMuc01)
let flightMuc02 = Flight(flightCode: "LH 1895",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2100)),
    fromCity: "Turin (TRN)", toCity: airportNameMuc,
    terminalArea: "T2", flightState: "Approaching",
    airplane: airplaneMuc02)
let flightMuc03 = Flight(flightCode: "LH 2327",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3600)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3300)),
    fromCity: "Vienna (VIE)", toCity: airportNameMuc,
    terminalArea: "T2", flightState: "Approaching",
    airplane: airplaneMuc03)
let flightMuc04 = Flight(flightCode: "AC 846",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4800)),
    fromCity: "Toronto (YYZ)", toCity: airportNameMuc,
    terminalArea: "T2", flightState: "Approaching",
    airplane: airplaneMuc04)
let flightMuc05 = Flight(flightCode: "LH 1807",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6600)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(7500)),
    fromCity: "Madrid (MAD)", toCity: airportNameMuc,
    terminalArea: "T2", flightState: "Approaching",
    airplane: airplaneMuc05)

// MUC outgoing flights
let flightMuc06 = Flight(flightCode: "VY 1813",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(-600)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(-600)),
    fromCity: airportNameMuc, toCity: "Barcelona (BCN)",
    terminalArea: "T1D", flightState: "Started",
    airplane: airplaneMuc06)
let flightMuc07 = Flight(flightCode: "BA 949",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1200)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1500)),
    fromCity: airportNameMuc, toCity: "London (LHR)",
    terminalArea: "T1B", flightState: "Refueling",
    airplane: airplaneMuc07)
let flightMuc08 = Flight(flightCode: "TK 1630",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2700)),
    fromCity: airportNameMuc, toCity: "Istanbul (IST)",
    terminalArea: "T1C", flightState: "Refueling",
    airplane: airplaneMuc08)
let flightMuc09 = Flight(flightCode: "RO 316",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4200)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4200)),
    fromCity: airportNameMuc, toCity: "Sibiu (SBZ)",
    terminalArea: "T1D", flightState: "Refueling",
    airplane: airplaneMuc09)
let flightMuc10 = Flight(flightCode: "LY 354",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6900)),
    fromCity: airportNameMuc, toCity: "Tel Aviv (TLV)",
    terminalArea: "T1F", flightState: "Not arrived yet",
    airplane: airplaneMuc10)


// MUC airport
let flightsMuc = [
    flightMuc01, flightMuc02, flightMuc03, flightMuc04, flightMuc05,
    flightMuc06, flightMuc07, flightMuc08, flightMuc09, flightMuc10]
let muenchen = Airport(airportName: airportNameMuc, flights: flightsMuc)



// FRA incoming airplanes
let airplaneFra01 = Airplane(airplaneName: "Airbus A319-100", airplaneImageName: "A319_100_LH.png")
let airplaneFra02 = Airplane(airplaneName: "Embraer ERJ 195", airplaneImageName: "E190_5_LH.png")
let airplaneFra03 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_HG.png")
let airplaneFra04 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_BA.png")
let airplaneFra05 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_LH.png")

// FRA outgoing airplanes
let airplaneFra06 = Airplane(airplaneName: "De Havilland Canada Dash 8-400",
    airplaneImageName: "DH8D_LG.png")
let airplaneFra07 = Airplane(airplaneName: "Boeing 737-800 Winglets",
    airplaneImageName: "B738_W.png")
let airplaneFra08 = Airplane(airplaneName: "Embraer ERJ 175",
    airplaneImageName: "E170_5_LO.png")
let airplaneFra09 = Airplane(airplaneName: "Dornier 328JET", airplaneImageName: "J328_BA.png")
let airplaneFra10 = Airplane(airplaneName: "Airbus A320-200", airplaneImageName: "A320_200_A3.png")


// FRA incoming flights
let flightFra01 = Flight(flightCode: "LH 2077",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(200)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(600)),
    fromCity: "Hamburg (HAM)", toCity: airportNameFra,
    terminalArea: "T1", flightState: "Approaching",
    airplane: airplaneFra01)
let flightFra02 = Flight(flightCode: "LH 2017",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1700)),
    fromCity: "Dusseldorf (DUS)", toCity: airportNameFra,
    terminalArea: "T1", flightState: "Approaching",
    airplane: airplaneFra02)
let flightFra03 = Flight(flightCode: "HG 8466",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3300)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3100)),
    fromCity: "Vienna (VIE)", toCity: airportNameFra,
    terminalArea: "T1", flightState: "Approaching",
    airplane: airplaneFra03)
let flightFra04 = Flight(flightCode: "BA 954",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4500)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(5100)),
    fromCity: "London (LHR)", toCity: airportNameFra,
    terminalArea: "T1", flightState: "Approaching",
    airplane: airplaneFra04)
let flightFra05 = Flight(flightCode: "LH 2235",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6300)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6300)),
    fromCity: "Paris (CDG)", toCity: airportNameFra,
    terminalArea: "T1", flightState: "Approaching",
    airplane: airplaneFra05)

// FRA outgoing flights
let flightFra06 = Flight(flightCode: "LG 9738",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(-100)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(200)),
    fromCity: airportNameFra, toCity: "Luxembourg (LUX)",
    terminalArea: "T2A", flightState: "Boarding",
    airplane: airplaneFra06)
let flightFra07 = Flight(flightCode: "UX 1518",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1000)),
    fromCity: airportNameFra, toCity: "Madrid (MAD)",
    terminalArea: "T2D", flightState: "Refueling",
    airplane: airplaneFra07)
let flightFra08 = Flight(flightCode: "LO 354",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2700)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3000)),
    fromCity: airportNameFra, toCity: "Warsaw (WAW)",
    terminalArea: "T2B", flightState: "Refueling",
    airplane: airplaneFra08)
let flightFra09 = Flight(flightCode: "BA 8216",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4100)),
    fromCity: airportNameFra, toCity: "Billund (BLL)",
    terminalArea: "T2D", flightState: "Refueling",
    airplane: airplaneFra09)
let flightFra10 = Flight(flightCode: "A3 503",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(5000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(4900)),
    fromCity: airportNameFra, toCity: "Thessaloniki (SKG)",
    terminalArea: "T2C", flightState: "Refueling",
    airplane: airplaneFra10)


// FRA airport
let flightsFra = [
    flightFra01, flightFra02, flightFra03, flightFra04, flightFra05,
    flightFra06, flightFra07, flightFra08, flightFra09, flightFra10]
let frankfurt = Airport(airportName: airportNameFra, flights: flightsFra)



// TXL incoming airplanes
let airplaneTxl01 = Airplane(airplaneName: "Airbus A319-100", airplaneImageName: "A319_100_4U.png")
let airplaneTxl02 = Airplane(airplaneName: "Avro RJ100", airplaneImageName: "RJ1H_LX.png")
let airplaneTxl03 = Airplane(airplaneName: "Canadair Regional Jet 900",
    airplaneImageName: "CRJ9_JP.png")
let airplaneTxl04 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_LH.png")
let airplaneTxl05 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_LH.png")

// TXL outgoing airplanes
let airplaneTxl06 = Airplane(airplaneName: "Airbus A321 Sharklets",
    airplaneImageName: "A321_Sharklets.png")
let airplaneTxl07 = Airplane(airplaneName: "Embraer ERJ 195", airplaneImageName: "E190_5_LH.png")
let airplaneTxl08 = Airplane(airplaneName: "Airbus A319-100", airplaneImageName: "A319_100_TP.png")
let airplaneTxl09 = Airplane(airplaneName: "Airbus A321-200", airplaneImageName: "A321_200_LH.png")
let airplaneTxl10 = Airplane(airplaneName: "Boeing 787-900 Dreamliner",
    airplaneImageName: "B787-900.png")


// TXL incoming flights
let flightTxl01 = Flight(flightCode: "4U 4062",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(0)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(60)),
    fromCity: "Dortmund (DTM)", toCity: airportNameTxl,
    terminalArea: "T3", flightState: "Landing",
    airplane: airplaneTxl01)
let flightTxl02 = Flight(flightCode: "LX 1110",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2100)),
    fromCity: "Zurich (ZRH)", toCity: airportNameTxl,
    terminalArea: "T3", flightState: "Approaching",
    airplane: airplaneTxl02)
let flightTxl03 = Flight(flightCode: "JP 108",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3000)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3000)),
    fromCity: "Ljubljana (LJU)", toCity: airportNameTxl,
    terminalArea: "T3", flightState: "Approaching",
    airplane: airplaneTxl03)
let flightTxl04 = Flight(flightCode: "LH 1655",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(5100)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(5100)),
    fromCity: "Bucharest (OTP)", toCity: airportNameTxl,
    terminalArea: "T3", flightState: "Approaching",
    airplane: airplaneTxl04)
let flightTxl05 = Flight(flightCode: "LH 1929",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6500)),
    fromCity: "Naples (NAP)", toCity: airportNameTxl,
    terminalArea: "T3", flightState: "Approaching",
    airplane: airplaneTxl05)

// TXL outgoing flights
let flightTxl06 = Flight(flightCode: "VY 3841",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(-300)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(0)),
    fromCity: airportNameTxl, toCity: "Palma de Mallorca (PMI)",
    terminalArea: "T1B", flightState: "Started",
    airplane: airplaneTxl06)
let flightTxl07 = Flight(flightCode: "LH 2310",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1200)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(1500)),
    fromCity: airportNameTxl, toCity: "Amsterdam (AMS)",
    terminalArea: "T2D", flightState: "Refueling",
    airplane: airplaneTxl07)
let flightTxl08 = Flight(flightCode: "TP 551",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(2800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3100)),
    fromCity: airportNameTxl, toCity: "Lisbon (LIS)",
    terminalArea: "T1A", flightState: "Refueling",
    airplane: airplaneTxl08)
let flightTxl09 = Flight(flightCode: "LH 586",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3800)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(3800)),
    fromCity: airportNameTxl, toCity: "Cairo (CAI)",
    terminalArea: "T2D", flightState: "Refueling",
    airplane: airplaneTxl09)
let flightTxl10 = Flight(flightCode: "NH 218",
    plannedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6100)),
    expectedTime: NSDate(timeIntervalSinceNow: NSTimeInterval(6400)),
    fromCity: airportNameTxl, toCity: "Tokyo (HND)",
    terminalArea: "T2C", flightState: "Not arrived yet",
    airplane: airplaneTxl10)


// TXL airport
let flightsTxl = [
    flightTxl01, flightTxl02, flightTxl03, flightTxl04, flightTxl05,
    flightTxl06, flightTxl07, flightTxl08, flightTxl09, flightTxl10]
let berlin = Airport(airportName: airportNameTxl, flights: flightsTxl)



// ALL airports
let airports = [muenchen, frankfurt, berlin]
