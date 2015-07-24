<?php
 
class Model 
{
    protected $_db;
    protected $_sql;
	protected $pbkey = 2012392;
	protected $salt = 2000;
     
    public function __construct()
    {
        $this->_db = Db::init();
    }
     
    protected function _setSql($sql)
    {
        $this->_sql = $sql;
    }
     
    public function getAll($data = null)
    {
        if (!$this->_sql)
        {
            throw new Exception("No SQL query!");
        }
         
        $sth = $this->_db->prepare($this->_sql);
        $sth->execute($data);
        return $sth->fetchAll();
    }
	public function getPbKey () {
		return md5($this->pbkey);
		
	}
    public function getSalt() {
		return $this->salt;
	}
    public function execute($data = null) {
		if (!$this->_sql)
        {
            throw new Exception("No SQL query!");
        }
         
        $sth = $this->_db->prepare($this->_sql);
        $sth->execute($data);
	} 
     
    public function getRow($data = null)
    {
        if (!$this->_sql)
        {
            throw new Exception("No SQL query!");
        }
         
        $sth = $this->_db->prepare($this->_sql);
        $sth->execute($data);
        return $sth->fetch();
    }
		// Encrypt Function
function mc_encrypt($encrypt, $key){
    $encrypt = serialize($encrypt);
    $iv = mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_CBC), MCRYPT_DEV_URANDOM);
    $key = pack('H*', $key);
    $mac = hash_hmac('sha256', $encrypt, substr(bin2hex($key), -32));
    $passcrypt = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $key, $encrypt.$mac, MCRYPT_MODE_CBC, $iv);
    $encoded = base64_encode($passcrypt).'|'.base64_encode($iv);
    return $encoded;
}

// Decrypt Function
function mc_decrypt($decrypt, $key){
    $decrypt = explode('|', $decrypt.'|');
    $decoded = base64_decode($decrypt[0]);
    $iv = base64_decode($decrypt[1]);
    if(strlen($iv)!==mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_CBC)){ return false; }
    $key = pack('H*', $key);
    $decrypted = trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $key, $decoded, MCRYPT_MODE_CBC, $iv));
    $mac = substr($decrypted, -64);
    $decrypted = substr($decrypted, 0, -64);
    $calcmac = hash_hmac('sha256', $decrypted, substr(bin2hex($key), -32));
    if($calcmac!==$mac){ return false; }
    $decrypted = unserialize($decrypted);
    return $decrypted;
}
}