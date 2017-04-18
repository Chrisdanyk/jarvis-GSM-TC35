#!/usr/bin/env bash

jv_pg_gt_lang()
{
  case "$1" in
    send_sms_success) echo "SMS envoyé à $2.";;
    send_sms_failed) echo "Echec de l'envoi du SMS à $2.";;
    call_success) echo "Appel de $2 en cours.";;
    call_failed) echo "Echec de l'appel de $2.";;
    hang_up_success) echo "Arret de l'appel...";;
    hang_up_failed) echo "Echec de l'arret de l'appel.";;
    pick_up_success) echo "Appel en cours.";;
    pick_up_failed) echo "Impossible de décrocher l'appel.";;

    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
