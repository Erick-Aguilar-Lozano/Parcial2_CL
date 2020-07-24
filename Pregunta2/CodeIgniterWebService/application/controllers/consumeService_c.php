<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ConsumeService_c extends CI_Controller {

	public function index()
	{
		$this->load->view('ConsumeService');
	}
	public function obtiene()
	{
		$ci = $this->input->post('ci');
		$client = new SoapClient('http://localhost:8080/WebServicPostgres/NewWebService?wsdl');
		$data['result'] = $client->retornaUsuario(array('ci' => $ci)) ->ciresult;
		$this->load->view('ConsumeService', $data);
	}
}
