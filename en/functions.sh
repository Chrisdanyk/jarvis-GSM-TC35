#!/usr/bin/env bash

jv_pg_gt_lang()
{
  case "$1" in
    send_sms_success) echo "SMS sent to $2.";;
    send_sms_failed) echo "Failed to send the SMS to $2...";;
    call_success) echo "Calling $2.";;
    call_failed) echo "Failed to call $2...";;
    hang_up_success) echo "Call stopped.";;
    hang_up_failed) echo "Failed to stop the call...";;
    pick_up_success) echo "Call in progress.";;
    pick_up_failed) echo "Failed to pick up the call...";;

    *) jv_error "Error: Translation key '$1' not recognized. Please contact the designer of this plugin.";;
  esac
}
