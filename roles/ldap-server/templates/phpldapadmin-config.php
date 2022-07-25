<?php
$config->custom->appearance['timezone'] = 'America/New_York';
$config->custom->appearance['hide_template_warning'] = true;
$config->custom->appearance['friendly_attrs'] = array();

$servers = new Datastore();
$servers->newServer('ldap_pla');
$servers->setValue('server','name','{{ inventory_hostname }}');
$servers->setValue('server','host','127.0.0.1');
$servers->setValue('login','auth_type','session');
$servers->setValue('login','bind_id','{{ ldap_admindn }}');
$servers->setValue('server','base',array('{{ ldap_basedn }}'));
$servers->setValue('auto_number','min',array('uidNumber'=>20000,'gidNumber'=>20000));
?>