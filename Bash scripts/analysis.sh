#!/bin/bash

#Search the time in the schedule of a specific day. Output is then separated with awk and the values we are interested in are printed out. 
echo "Date: 0310" >> Dealers_working_during_losses
echo "Time: 05:00:00 AM" >> Dealers_working_during_losses
grep "05:00:00 AM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0310" >> Dealers_working_during_losses
echo "Time: 08:00:00 AM" >> Dealers_working_during_losses
grep "08:00:00 AM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0310" >> Dealers_working_during_losses
echo "Time: 02:00:00 PM" >> Dealers_working_during_losses
grep "02:00:00 PM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0310" >> Dealers_working_during_losses
echo "Time: 08:00:00 PM" >> Dealers_working_during_losses
grep "08:00:00 PM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0310" >> Dealers_working_during_losses
echo "Time: 11:00:00 PM" >> Dealers_working_during_losses
grep "11:00:00 PM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0312" >> Dealers_working_during_losses
echo "Time: 05:00:00 AM" >> Dealers_working_during_losses
grep "05:00:00 AM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0312" >> Dealers_working_during_losses
echo "Time: 08:00:00 AM" >> Dealers_working_during_losses
grep "08:00:00 AM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0312" >> Dealers_working_during_losses
echo "Time: 02:00:00 PM" >> Dealers_working_during_losses
grep "02:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0312" >> Dealers_working_during_losses
echo "Time: 08:00:00 PM" >> Dealers_working_during_losses
grep "08:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0312" >> Dealers_working_during_losses
echo "Time: 11:00:00 PM" >> Dealers_working_during_losses
grep "11:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0315" >> Dealers_working_during_losses
echo "Time: 05:00:00 AM" >> Dealers_working_during_losses
grep "05:00:00 AM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0315" >> Dealers_working_during_losses
echo "Time: 08:00:00 AM" >> Dealers_working_during_losses
grep "08:00:00 AM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

echo "Date: 0315" >> Dealers_working_during_losses
echo "Time: 02:00:00 PM" >> Dealers_working_during_losses
grep "02:00:00 PM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealers_working_during_losses
echo " " >> Dealers_working_during_losses

