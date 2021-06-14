<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Regulations extends Migration
{
	public function up()
	{
	    $this->forge->addField([
	        'id_regulation' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE,
                'comment' => 'ID regulaminu'
            ],
             'description_pl' => [
                 'type' => 'text',
                 'null' => false,
                 'comment' => 'Treść regulaminu'
             ],
             'date_create' => [
                    'type' => 'timestamp',
                    'null' => false,
                    'comment' => 'Data utworzenia'
                ],
            ]
        );
	    $this->forge->addKey('id_regulation',true);
	    $this->forge->createTable('regulations');
	}

	public function down()
	{
		$this->forge->dropTable('regulations');
	}
}
