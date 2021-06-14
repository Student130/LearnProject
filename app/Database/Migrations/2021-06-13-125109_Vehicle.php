<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Vehicle extends Migration
{
	public function up()
	{
        $this->forge->addField([
                'id_vehicle' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'unsigned' => TRUE,
                    'auto_increment' => TRUE,
                    'comment' => 'ID pojazu'
                ],

            ]
        );
        $this->forge->addKey('id_accept',true);
        $this->forge->addForeignKey('id_regulation','regulations','id_regulation');
        $this->forge->createTable('accept_regulations');
	}

	public function down()
	{
		//
	}
}
