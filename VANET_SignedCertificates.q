//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
Location Verification
*/
certifiedvehicle and certifiedRSU --> VehicleAgent.Node1

/*
Aliveness
(Security Property 8.2)
*/
VehicleBrain.End --> RSU1.sentCertificate

/*
Aliveness
(Security Property 8.1)
*/
certifiedvehicle --> certifiedRSU

/*
Agreement
(Security Property 8.3)
*/
certifiedvehicle and RSU1.Idling and certifiedRSU and VehicleBrain.End  --> VehicleBrain.SharedKey == RSU1.receivedSharedKey
