#!/usr/bin/env bash

# Send SMS
# $1 (string): Phone number
# $2 (string): SMS to send
# $3 (string): Name of the person to send the SMS
# $4 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_gt_send_sms()
{
  # Send request to GSM module
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python $dir/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --sendSpecialSMS $1 "$2"`

  # Show the result to user (if requested)
  if [[ $result =~ "SMS sent: True" ]]; then
    if [[ ! $4 =~ "True" ]]; then
      say "$(jv_pg_gt_lang send_sms_success $3)"
    fi
    return 0
  else
    if [[ ! $4 =~ "True" ]]; then
      say "$(jv_pg_gt_lang send_sms_failed $3)"
    fi
  fi

  return 1
}

# Call
# $1 (string): Phone number
# $2 (string): Name of the person to call
# $3 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_gt_call()
{
  # Send request to GSM module
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python $dir/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --call $1`

  # Show the result to user (if requested)
  if [[ $result =~ "Call picked up: True" ]]; then
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_gt_lang call_success $2)"
    fi
    return 0
  else
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_gt_lang call_failed $2)"
    fi
  fi

  return 1
}

# Hang up call
# $1 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_gt_hang_up()
{
  # Send request to GSM module
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python $dir/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --hangUpCall`

  # Show the result to user (if requested)
  if [[ $result =~ "Hang up call: True" ]]; then
    if [[ ! $1 =~ "True" ]]; then
      say "$(jv_pg_gt_lang hang_up_success)"
    fi
    return 0
  else
    if [[ ! $1 =~ "True" ]]; then
      say "$(jv_pg_gt_lang hang_up_failed)"
    fi
  fi

  return 1
}

# Pick up call
# $1 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_gt_pick_up()
{
  # Send request to GSM module
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python $dir/GSMTC35/GSMTC35.py --serialPort $var_jv_pg_gt_com_port --pin $var_jv_pg_gt_pin --pickUpCall`

  # Show the result to user (if requested)
  if [[ $result =~ "Pick up call: True" ]]; then
    if [[ ! $1 =~ "True" ]]; then
      say "$(jv_pg_gt_lang pick_up_success)"
    fi
    return 0
  else
    if [[ ! $1 =~ "True" ]]; then
      say "$(jv_pg_gt_lang pick_up_failed)"
    fi
  fi

  return 1
}
