<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ActivationAccount extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_activation' => [
				'type' => 'INT',
				'constraint' => 11,
                'unique' => TRUE,
                'auto_increment' => TRUE,
				'comment' => 'ID aktywacji użytkownika'
			],
			'id_user' => [
				'type' => 'INT',
				'constraint' => 11,
				'null' => false,
				'unsigned' => true,
				'comment' => 'ID użytkownika'
			],
			'activate_code' => [
				'type' => 'varchar',
				'constraint' => 200,
				'comment' => 'Kod aktywacyjny'
			],
			'date_avtivation' => [
				'type' => 'timestamp',
				'comment' => 'Data utworzenia'
			],
			'date_expiration' => [
				'type' => 'datetime',
				'comment' => 'Data ważności konta'
			],
			'is_used' =>[
				'type' => 'bit',
				'constraint' => 1,
				'comment' => 'Czy kod jest użyty 0- nie 1-tak'
			]
			]);
			$this->forge->addKey('id_activation', true);
			$this->forge->addForeignKey('id_user','users','id_user');
			$this->forge->createTable('activation_accont');
	}

	public function down()
	{
		$this->forge->dropForeignKey('activation_accont','activation_accont_id_user_foreign');
		$this->forge->dropTable('activation_accont');
	}
}
