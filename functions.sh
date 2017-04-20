#!/usr/bin/env bash

# Send SMS
# $1 (string): Phone number
# $2 (string): SMS to send
# $3 (string): Name of the person to send the SMS
jv_pg_gt_send_sms()
{
  # Send request to GSM module
  result=`python plugins/jarvis-GSM-TC35/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --sendSMS $1 "$2"`

  # Show the result to user
  if [[ $result =~ "SMS sent: True" ]]; then
    say "$(jv_pg_gt_lang send_sms_success $3)"
  else
    say "$(jv_pg_gt_lang send_sms_failed $3)"
  fi
}

# Call
# $1 (string): Phone number
# $2 (string): Name of the person to call
jv_pg_gt_call()
{
  # Send request to GSM module
  result=`python plugins/jarvis-GSM-TC35/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --call $1`

  # Show the result to user
  if [[ $result =~ "Call picked up: True" ]]; then
    say "$(jv_pg_gt_lang call_success $2)"
  else
    say "$(jv_pg_gt_lang call_failed $2)"
  fi
}

# Hang up call
jv_pg_gt_hang_up()
{
  # Send request to GSM module
  result=`python plugins/jarvis-GSM-TC35/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --hangUpCall`

  # Show the result to user
  if [[ $result =~ "Hang up call: True" ]]; then
    say "$(jv_pg_gt_lang hang_up_success)"
  else
    say "$(jv_pg_gt_lang hang_up_failed)"
  fi
}

# Pick up call
jv_pg_gt_pick_up()
{
  # Send request to GSM module
  result=`python plugins/jarvis-GSM-TC35/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --pickUpCall`

  # Show the result to user
  if [[ $result =~ "Pick up call: True" ]]; then
    say "$(jv_pg_gt_lang pick_up_success)"
  else
    say "$(jv_pg_gt_lang pick_up_failed)"
  fi
}
