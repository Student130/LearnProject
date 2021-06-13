<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Addresses extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_address' => [
				'type' => 'INT',
				'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID adresu'
			],
			'voivodeship' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Wojewódzcto'
			],
			'voivodeship' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Wojewódzcto'
			],
			'district' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Powiat'
			],
			'commune' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Gmina'
			],
			'place' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Miejscowość'
			],
			'street' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
				'null' => true,
				'comment' => 'Ulica'
			],
			'date_create' => [
				'type' => 'timestamp',
				'null' => false,
				'comment' => 'Data utworzenia'
			]
			]);
			$this->forge->addKey('id_address', true);
			$this->forge->createTable('addresses');
	}

	public function down()
	{
		$this->forge->dropTable('addresses');
	}
}
