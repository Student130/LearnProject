<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Users extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_user' => [
				'type' => 'INT',
				'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID użytkownika'
			],
			'name' => [
				'type' => 'VARCHAR',
				'constraint' => 40,
				'null' => true,
				'comment' => 'Imię użytkownika'
			],
			'surname' => [
				'type' => 'VARCHAR',
				'constraint' => 40,
				'null' => true,
				'comment' => 'Nazwisko użytkownika'
			],
			'password' => [
				'type' => 'TEXT',
				'null' => false,
				'comment' => 'Hasło użytkownika'
			],
			'email' => [
				'type' => 'VARCHAR',
				'constraint' => 40,
				'null' => false
			],
			'date_of_birth' => [
				'type' => 'date',
				'null' => true
			],
			'is_active' => [
				'type' => 'BIT',
				'conxtarint' => 1,
				'default' => 0,
				'comment' => 'Czy konto aktywne 0-tak, 1-nie'
			],
			'date_block' => [
				'type' => 'datetime',
				'null' => true
			],
			'date_create' => [
				'type' => 'timestamp',
				'null' => false,
				'comment' => 'Data utworzenia'
			]
			]);
			$this->forge->addKey('id_user', true);
			$this->forge->addKey('email',true);
			$this->forge->createTable('users');
	}

	public function down()
	{
		$this->forge->dropTable('users');
	}
}
