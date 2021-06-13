<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddressesTo extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_address_to' => [
				'type' => 'INT',
				'constraint' => 11,
                'unique' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID adresu do'
			],
			'id_address' => [
				'type' => 'INT',
				'constraint' => 11,
				'null' => false,
				'unsigned' => true,
				'comment' => 'ID adresu'
			],
			]);
			$this->forge->addKey('id_address_to', true);
			$this->forge->addForeignKey('id_address','addresses','id_address');
			$this->forge->createTable('addresses_to');
			
	}

	public function down()
	{
		$this->forge->dropForeignKey('addresses_to','addresses_to_id_address_foreign');
		$this->forge->dropTable('addresses_to');
		
	}
}
