<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AcceptRegulations extends Migration
{
	public function up()
	{
        $this->forge->addField([
                'id_accept' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'unsigned' => TRUE,
                    'auto_increment' => TRUE,
                    'comment' => 'ID zatwierdzenia'
                ],
                'id_regulation' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'unsigned' => true,
                    'comment' => 'ID regulaminu'
                ],
                'date_create' => [
                    'type' => 'timestamp',
                    'null' => false,
                    'comment' => 'Data utworzenia'
                ],
                'date_accept' => [
                    'type' => 'datetime',
                    'null' => true,
                    'comment' => 'Data zaakceptowania'
                ],
                'is_accept' => [
                    'type' => 'bit',
                    'constraint' => 1,
                    'comment' => 'Jest zaakceptowany'
                ]
            ]
        );
        $this->forge->addKey('id_accept',true);
        $this->forge->addForeignKey('id_regulation','regulations','id_regulation');
        $this->forge->createTable('accept_regulations');
	}

	public function down()
	{
		$this->forge->dropTable('accept_regulations');
	}
}
