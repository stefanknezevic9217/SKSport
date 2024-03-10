<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $roles=["Admin","User"];
    public function run(): void
    {
        foreach ($this->roles as $role){
            $val=Role::create(["name"=>$role]);

        }
    }
}
