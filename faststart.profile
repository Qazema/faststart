<?php

/**
 * @file
 * Enables modules and site configuration for a Faststart site installation.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function faststart_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {

  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'Kauriweb';
  $form['admin_account']['account']['mail']['#default_value'] = 'contact@kauriweb.com';

  // Date/time settings
  $form['regional_settings']['site_default_country']['#default_value'] = 'FR';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'Europe/Paris';

  // Modules update mail notification setting
  $form['update_notifications']['enable_update_status_emails']['#default_value'] = '0';
  
}
