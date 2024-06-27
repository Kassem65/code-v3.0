<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class YearlyDataCleanup extends Command
{
    protected $signature = 'yearly:cleanup';
    protected $description = 'Backup and clean up yearly data';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $this->info('Starting yearly data cleanup...');

        // Step 1: Backup the database
        $this->backupDatabase();

        // Step 2: Clean up the data
        $this->cleanupData();

        $this->info('Yearly data cleanup completed successfully!');
    }

    private function backupDatabase()
    {
        $dbHost = env('DB_HOST');
        $dbName = env('DB_DATABASE');
        $dbUser = env('DB_USERNAME');
        $dbPass = env('DB_PASSWORD');
        $dbPort = env('DB_PORT');
        $backupPath = storage_path('backups/' . date('Y-m-d_H-i-s') . '_backup.sql');
        $path = public_path('test.sql') ;
        $command = "mysqldump --host=$dbHost --user=$dbUser --port=$dbPort --password=$dbPass $dbName > $backupPath";

        system($command, $output);

        if ($output === 0) {
            $this->info("Backup successful: $backupPath");
        } else {
            $this->error('Backup failed' );
        }
    }

    private function cleanupData()
    {
        // Example queries to clean up data
        DB::table('assessment_student')->delete();
        DB::table('category_student')->delete();
        DB::table('assessments')->delete();
        DB::table('categories')->delete();
        DB::table('exam_student')->delete();
        DB::table('exams')->delete();
        // Add additional tables as needed

        $this->info('Data cleanup completed.');
    }
}
