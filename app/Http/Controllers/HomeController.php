<?php

namespace App\Http\Controllers;

use App\invoices;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $sum = invoices::sum('Total');
        $count = invoices::count();
        $unpaid = invoices::where('Value_Status', 2)->sum('Total');
        $unpaidc = invoices::where('Value_Status', 2)->count();
        $unpaidp = invoices::where('Value_Status', 2)->count() / invoices::count() * 100;
        $paid = invoices::where('Value_Status', 1)->sum('Total');
        $paidc = invoices::where('Value_Status', 1)->count();
        $paidp = invoices::where('Value_Status', 1)->count() / invoices::count() * 100;
        $partial = invoices::where('Value_Status', 3)->sum('Total');
        $partialc = invoices::where('Value_Status', 3)->count();
        $partialp = invoices::where('Value_Status', 3)->count() / invoices::count() * 100;

        if ($unpaidc == 0) {
            $unpaidp = 0;
        } else {
            $unpaidp;
        }

        if ($paidc == 0) {
            $paidp = 0;
        } else {
            $paidp;
        }

        if ($partialc == 0) {
            $partialp = 0;
        } else {
            $partialp;
        }

        $chartjs = app()->chartjs
            ->name('barChartTest')
            ->type('bar')
            ->size(['width' => 350, 'height' => 200])
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة', 'الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    "label" => "الفواتير الغير المدفوعة",
                    'backgroundColor' => ['#ec5858'],
                    'data' => [$unpaidp]
                ],
                [
                    "label" => "الفواتير المدفوعة",
                    'backgroundColor' => ['#81b214'],
                    'data' => [$paidp]
                ],
                [
                    "label" => "الفواتير المدفوعة جزئيا",
                    'backgroundColor' => ['#ff9642'],
                    'data' => [$partialp]
                ],


            ])
            ->options([]);

        $chartjs_2 = app()->chartjs
            ->name('pieChartTest')
            ->type('pie')
            ->size(['width' => 340, 'height' => 200])
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة', 'الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    'backgroundColor' => ['#ec5858', '#81b214', '#ff9642'],
                    'data' => [$unpaidp, $paidp, $partialp]
                ]
            ])
            ->options([]);


        return view('home', [
            'sum' => $sum,
            'count' => $count,
            'unpaid' => $unpaid,
            'unpaidc' => $unpaidc,
            'unpaidp' => $unpaidp,
            'paid' => $paid,
            'paidc' => $paidc,
            'paidp' => $paidp,
            'partial' => $partial,
            'partialc' => $partialc,
            'partialp' => $partialp,
            'chartjs' => $chartjs,
            'chartjs_2' => $chartjs_2,
        ]);
    }
}
