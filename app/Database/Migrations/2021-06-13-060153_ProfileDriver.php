<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ProfileDriver extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_driver' => [
				'type' => 'INT',
				'constraint' => 11,
                'unique' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID kierowcy'
			],
			'id_user' => [
				'type' => 'INT',
				'constraint' => 11,
				'null' => false,
				'unsigned' => true,
				'unique'  => true,
				'comment' => 'ID użytkownika'
			],
			'number_drive_lisense' => [
				'type' => 'varchar',
				'constraint' => 40,
				'null' => true,
				'comment' => 'nr prawa jazdy'
			],
			'description' => [
				'type' => 'text',
				'null' => true,
				'comment' => 'Opis kierowcy'
			]
			]);
			$this->forge->addKey('id_driver', true);
			$this->forge->addForeignKey('id_user','users','id_user');
			$this->forge->createTable('profile_driver');
			
	}

	public function down()
	{
		$this->forge->dropForeignKey('profile_driver','profile_driver_id_user_foreign');
		$this->forge->dropTable('profile_driver');
		
	}
}
