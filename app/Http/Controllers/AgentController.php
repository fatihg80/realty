<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AgentController extends Controller
{
    public function AgentDashboard(){

        return view('agent.index');
    }//End Method

    public function AgentLogout(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        $notification = array(
            'message' => 'Agent Logout  Successfully',
            'alert-type' => 'success');

        return redirect('agent/login')->with($notification);


    }//End Method

    public function AgentLogin(Request $request)
    {

        return view('agent.agent_login');

    }//End Method
}
