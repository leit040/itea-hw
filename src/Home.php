<?php


namespace Leit040\itea_hw;
use Leit040\Package\HttpClient;



class Home
{
    public function get(string $method,string $url): bool|\Psr\Http\Message\StreamInterface
    {
        return HttpClient::get_content($url,$method);

    }
}

