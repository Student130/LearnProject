<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddressesUser extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_address_user' => [
				'type' => 'INT',
				'constraint' => 11,
                'unique' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID adresu użytkownika'
			],
			'id_address' => [
				'type' => 'INT',
				'constraint' => 11,
				'null' => false,
				'unsigned' => true,
				'comment' => 'ID adresu'
			],
			'id_user' => [
				'type' => 'INT',
				'constraint' => 11,
				'null' => false,
				'unsigned' => true,
				'comment' => 'ID użytkownika'
			],
			'is_active' => [
				'type' => 'BIT',
				'conxtarint' => 1,
				'default' => 0,
				'comment' => 'Czy adres jest aktualny 0-tak, 1-nie'
			]
			]);
			$this->forge->addKey('id_address_user', true);
			$this->forge->addForeignKey('id_address','addresses','id_address');
			$this->forge->addForeignKey('id_user','users','id_user');
			$this->forge->createTable('addresses_user');
	}

	public function down()
	{
		$this->forge->dropForeignKey('addresses_user','addresses_user_id_address_foreign');
		$this->forge->dropForeignKey('addresses_user','addresses_user_id_user_foreign');
		$this->forge->dropTable('addresses_user');
	}
}
