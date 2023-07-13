IR:
/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "Safe_914" {
    code {
        /// @src 0:1919,21866
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Safe_914()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Safe_914_deployed"), datasize("Safe_914_deployed"))

        return(_1, datasize("Safe_914_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_Executor_2371() {

            /// @src 1:215,1424
            constructor_SelfAuthorized_2319()

        }

        function constructor_FallbackManager_976() {

            /// @src 2:250,4057
            constructor_ISignatureValidatorConstants_2280()

        }

        function constructor_GuardManager_1105() {

            /// @src 3:1108,2940
            constructor_StorageAccessible_2168()

        }

        function constructor_ISignatureValidatorConstants_2280() {

            /// @src 15:75,236
            constructor_SecuredTokenTransfer_2093()

        }

        function constructor_ModuleManager_1531() {

            /// @src 4:661,8633
            constructor_Executor_2371()

        }

        function constructor_NativeCurrencyPaymentFallback_2066() {

            /// @src 7:233,582
            constructor_Singleton_2119()

        }

        function constructor_OwnerManager_2044() {

            /// @src 5:440,6822
            constructor_ModuleManager_1531()

        }

        function constructor_Safe_914() {

            /// @src 0:3700,3971
            constructor_GuardManager_1105()

            /// @src 0:3963,3964
            let expr_98 := 0x01
            /// @src 0:3951,3964
            let _2 := convert_t_rational_1_by_1_to_t_uint256(expr_98)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, _2)
            let expr_99 := _2

        }

        function constructor_SecuredTokenTransfer_2093() {

            /// @src 8:180,1669
            constructor_SignatureDecoder_2113()

        }

        function constructor_SelfAuthorized_2319() {

            /// @src 9:209,542
            constructor_NativeCurrencyPaymentFallback_2066()

        }

        function constructor_SignatureDecoder_2113() {

            /// @src 10:189,1693
            constructor_OwnerManager_2044()

        }

        function constructor_Singleton_2119() {

            /// @src 11:314,579

        }

        function constructor_StorageAccessible_2168() {

            /// @src 12:445,2370
            constructor_FallbackManager_976()

        }

        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

    }
    object "Safe_914_deployed" {
        code {
            /// @src 0:1919,21866
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x0d582f13
                {
                    // addOwnerWithThreshold(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    fun_addOwnerWithThreshold_1753(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x12fb68e0
                {
                    // checkNSignatures(bytes32,bytes,bytes,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_bytes32t_bytes_memory_ptrt_bytes_memory_ptrt_uint256(4, calldatasize())
                    fun_checkNSignatures_741(param_0, param_1, param_2, param_3)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2d9ad53d
                {
                    // isModuleEnabled(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_isModuleEnabled_1418(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2f54bf6e
                {
                    // isOwner(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_isOwner_1992(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3408e470
                {
                    // getChainId()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_getChainId_789()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x468721a7
                {
                    // execTransactionFromModule(address,uint256,bytes,uint8)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptrt_enum$_Operation_$2325(4, calldatasize())
                    let ret_0 :=  fun_execTransactionFromModule_1368(param_0, param_1, param_2, param_3)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5229073f
                {
                    // execTransactionFromModuleReturnData(address,uint256,bytes,uint8)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptrt_enum$_Operation_$2325(4, calldatasize())
                    let ret_0, ret_1 :=  fun_execTransactionFromModuleReturnData_1396(param_0, param_1, param_2, param_3)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool_t_bytes_memory_ptr__to_t_bool_t_bytes_memory_ptr__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5624b25b
                {
                    // getStorageAt(uint256,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  fun_getStorageAt_2157(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5ae6bd37
                {
                    // signedMessages(bytes32)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                    let ret_0 :=  getter_fun_signedMessages_88(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x610b5925
                {
                    // enableModule(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_enableModule_1253(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x694e80c3
                {
                    // changeThreshold(uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_changeThreshold_1961(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6a761202
                {
                    // execTransaction(address,uint256,bytes,uint8,uint256,uint256,uint256,address,address,bytes)

                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10 :=  abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptrt_enum$_Operation_$2325t_uint256t_uint256t_uint256t_addresst_address_payablet_bytes_memory_ptr(4, calldatasize())
                    let ret_0 :=  fun_execTransaction_376(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7d832974
                {
                    // approvedHashes(address,bytes32)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_bytes32(4, calldatasize())
                    let ret_0 :=  getter_fun_approvedHashes_94(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x934f3a11
                {
                    // checkSignatures(bytes32,bytes,bytes)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_bytes32t_bytes_memory_ptrt_bytes_memory_ptr(4, calldatasize())
                    fun_checkSignatures_491(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa0e67e2b
                {
                    // getOwners()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_getOwners_2043()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr__to_t_array$_t_address_$dyn_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xaffed0e0
                {
                    // nonce()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nonce_82()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xb4faba09
                {
                    // simulateAndRevert(address,bytes)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_bytes_memory_ptr(4, calldatasize())
                    fun_simulateAndRevert_2167(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xb63e800d
                {
                    // setup(address[],uint256,address,bytes,address,address,uint256,address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9 :=  abi_decode_tuple_t_array$_t_address_$dyn_calldata_ptrt_uint256t_addresst_bytes_calldata_ptrt_addresst_addresst_uint256t_address_payable(4, calldatasize())
                    fun_setup_167(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcc2f8452
                {
                    // getModulesPaginated(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0, ret_1 :=  fun_getModulesPaginated_1513(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr_t_address__to_t_array$_t_address_$dyn_memory_ptr_t_address__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd4d9bdcd
                {
                    // approveHash(bytes32)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                    fun_approveHash_776(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd8d11f78
                {
                    // getTransactionHash(address,uint256,bytes,uint8,uint256,uint256,uint256,address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10 :=  abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptrt_enum$_Operation_$2325t_uint256t_uint256t_uint256t_addresst_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_getTransactionHash_913(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe009cfde
                {
                    // disableModule(address,address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                    fun_disableModule_1308(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe19a9dd9
                {
                    // setGuard(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_setGuard_1092(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe318b52b
                {
                    // swapOwner(address,address,address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_address(4, calldatasize())
                    fun_swapOwner_1930(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe75235b8
                {
                    // getThreshold()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_getThreshold_1970()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe86637db
                {
                    // encodeTransactionData(address,uint256,bytes,uint8,uint256,uint256,uint256,address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10 :=  abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptrt_enum$_Operation_$2325t_uint256t_uint256t_uint256t_addresst_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_encodeTransactionData_870(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf08a0323
                {
                    // setFallbackHandler(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_setFallbackHandler_966(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf698da25
                {
                    // domainSeparator()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_domainSeparator_806()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf8dc5dd9
                {
                    // removeOwner(address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                    fun_removeOwner_1830(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xffa1ad74
                {
                    // VERSION()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_VERSION_39()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) { fun__2065() stop() }
            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
            fun__975() stop()

            // address[]
            function abi_decode_available_length_t_array$_t_address_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let src := offset
                if gt(add(src, mul(length, 0x20)), end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_address(elementPos, end))
                    dst := add(dst, 0x20)
                    src := add(src, 0x20)
                }
            }

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory(src, dst, length)
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_t_address_payable(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address_payable(value)
            }

            // address[]
            function abi_decode_t_array$_t_address_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_t_bytes4_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bytes4(value)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_t_enum$_Operation_$2325(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_enum$_Operation_$2325(value)
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_addresst_address(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_bytes32(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_bytes_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptrt_enum$_Operation_$2325t_uint256t_uint256t_uint256t_addresst_address_payablet_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10 {
                if slt(sub(dataEnd, headStart), 320) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value4 := abi_decode_t_enum$_Operation_$2325(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value5 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value6 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value7 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value8 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 256

                    value9 := abi_decode_t_address_payable(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 288))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value10 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptrt_enum$_Operation_$2325t_uint256t_uint256t_uint256t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10 {
                if slt(sub(dataEnd, headStart), 320) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value4 := abi_decode_t_enum$_Operation_$2325(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value5 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value6 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value7 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value8 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 256

                    value9 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 288

                    value10 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptrt_enum$_Operation_$2325(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_enum$_Operation_$2325(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_array$_t_address_$dyn_calldata_ptrt_uint256t_addresst_bytes_calldata_ptrt_addresst_addresst_uint256t_address_payable(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9 {
                if slt(sub(dataEnd, headStart), 256) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_address_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value3 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4, value5 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value6 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value7 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value8 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value9 := abi_decode_t_address_payable(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_bytes32(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_bytes32t_bytes_memory_ptrt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_bytes32t_bytes_memory_ptrt_bytes_memory_ptrt_uint256(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_bytes4_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encodeUpdatedPos_t_address_to_t_address(value0, pos) -> updatedPos {
                abi_encode_t_address_to_t_address(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function abi_encode_t_address_payable_to_t_address_payable_fromStack(value, pos) {
                mstore(pos, cleanup_t_address_payable(value))
            }

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            // address[] -> address[]
            function abi_encode_t_array$_t_address_$dyn_calldata_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value, length, pos)  -> end  {

                pos := array_storeLengthForEncoding_t_array$_t_address_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_address_$dyn_calldata_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := calldata_access_t_address(baseRef, srcPtr)
                    pos := abi_encodeUpdatedPos_t_address_to_t_address(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_address_$dyn_calldata_ptr(srcPtr)
                }
                end := pos
            }

            // address[] -> address[]
            function abi_encode_t_array$_t_address_$dyn_memory_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_address_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_address_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_address_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_address_to_t_address(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_address_$dyn_memory_ptr(srcPtr)
                }
                end := pos
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_bytes1_to_t_bytes1_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes1(cleanup_t_bytes1(value)))
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_t_bytes4_to_t_bytes4_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes4(value))
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)

                copy_calldata_to_memory(start, pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_contract$_Safe_$914_to_t_address_payable_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_Safe_$914_to_t_address_payable(value))
            }

            function abi_encode_t_enum$_Operation_$2325_to_t_uint8_fromStack(value, pos) {
                mstore(pos, convert_t_enum$_Operation_$2325_to_t_uint8(value))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 28)
                store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(pos)
                end := add(pos, 28)
            }

            function abi_encode_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 5)
                store_literal_in_memory_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_packed_t_bytes1_t_bytes1_t_bytes32_t_bytes32__to_t_bytes1_t_bytes1_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                abi_encode_t_bytes1_to_t_bytes1_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 1)

                abi_encode_t_bytes1_to_t_bytes1_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 1)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value3,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_packed_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_t_bytes32__to_t_string_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(pos , value0) -> end {

                pos := abi_encode_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function abi_encode_tuple_t_address_t_uint256_t_bytes_calldata_ptr_t_enum$_Operation_$2325_t_uint256_t_uint256_t_uint256_t_address_t_address_payable_t_bytes_memory_ptr_t_address__to_t_address_t_uint256_t_bytes_memory_ptr_t_uint8_t_uint256_t_uint256_t_uint256_t_address_t_address_payable_t_bytes_memory_ptr_t_address__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11) -> tail {
                tail := add(headStart, 352)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

                abi_encode_t_enum$_Operation_$2325_to_t_uint8_fromStack(value4,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 160))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 192))

                abi_encode_t_address_to_t_address_fromStack(value8,  add(headStart, 224))

                abi_encode_t_address_payable_to_t_address_payable_fromStack(value9,  add(headStart, 256))

                mstore(add(headStart, 288), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value10,  tail)

                abi_encode_t_address_to_t_address_fromStack(value11,  add(headStart, 320))

            }

            function abi_encode_tuple_t_array$_t_address_$dyn_calldata_ptr_t_uint256_t_address_t_address__to_t_array$_t_address_$dyn_memory_ptr_t_uint256_t_address_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 128)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_address_$dyn_calldata_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value0, value1,  tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 96))

            }

            function abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr__to_t_array$_t_address_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_address_$dyn_memory_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value0,  tail)

            }

            function abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr_t_address__to_t_array$_t_address_$dyn_memory_ptr_t_address__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_address_$dyn_memory_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value0,  tail)

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bool_t_bytes_memory_ptr__to_t_bool_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value1,  tail)

            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bytes32_t_address_t_uint256_t_bytes32_t_enum$_Operation_$2325_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256__to_t_bytes32_t_address_t_uint256_t_bytes32_t_uint8_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10) -> tail {
                tail := add(headStart, 352)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

                abi_encode_t_enum$_Operation_$2325_to_t_uint8_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

                abi_encode_t_address_to_t_address_fromStack(value8,  add(headStart, 256))

                abi_encode_t_address_to_t_address_fromStack(value9,  add(headStart, 288))

                abi_encode_t_uint256_to_t_uint256_fromStack(value10,  add(headStart, 320))

            }

            function abi_encode_tuple_t_bytes32_t_bool__to_t_bytes32_t_bool__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

            }

            function abi_encode_tuple_t_bytes32_t_uint256_t_contract$_Safe_$914__to_t_bytes32_t_uint256_t_address_payable__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_contract$_Safe_$914_to_t_address_payable_fromStack(value2,  add(headStart, 64))

            }

            function abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

            }

            function abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes4_to_t_bytes4_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

            }

            function abi_encode_tuple_t_bytes_memory_ptr_t_bytes_memory_ptr__to_t_bytes_memory_ptr_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value1,  tail)

            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function abi_encode_tuple_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function allocate_and_zero_memory_array_t_array$_t_address_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_address_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_address(dataStart, dataSize)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function allocate_memory_array_t_array$_t_address_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function array_dataslot_t_array$_t_address_$dyn_calldata_ptr(ptr) -> data {
                data := ptr

            }

            function array_dataslot_t_array$_t_address_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_array$_t_address_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_nextElement_t_array$_t_address_$dyn_calldata_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            function array_nextElement_t_array$_t_address_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            function array_storeLengthForEncoding_t_array$_t_address_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function calldata_access_t_address(baseRef, ptr) -> value {
                value := abi_decode_t_address(ptr, add(ptr, 32))
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x != 0 and y > (maxValue / x)
                if and(iszero(iszero(x)), gt(y, div(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { panic_error_0x11() }

                product := mul(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            function checked_sub_t_uint8(x, y) -> diff {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_address_payable(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function cleanup_t_enum$_Operation_$2325(value) -> cleaned {
                cleaned := value validator_assert_t_enum$_Operation_$2325(value)
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_25_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_2835717307_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_32523383700587834770323112271211932718128200013265661849047136999858837557784_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_33528237782592280163068556224972516439282563014722366175641814928123294921928_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_49122629484629529244014240937346711770925847994644146912111677022347558721749_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_549534475_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_84814075808141314178395468817534025465894426928601295766380145544921651250904_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            /// @src 0:2349,2468
            function constant_DOMAIN_SEPARATOR_TYPEHASH_42() -> ret {
                /// @src 0:2402,2468
                let expr_41 := 0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218
                let _209 := convert_t_rational_32523383700587834770323112271211932718128200013265661849047136999858837557784_by_1_to_t_bytes32(expr_41)

                ret := _209
            }

            /// @src 15:176,233
            function constant_EIP1271_MAGIC_VALUE_2279() -> ret {
                /// @src 15:223,233
                let expr_2278 := 0x20c13b0b
                let _182 := convert_t_rational_549534475_by_1_to_t_bytes4(expr_2278)

                ret := _182
            }

            /// @src 2:421,545
            function constant_FALLBACK_HANDLER_STORAGE_SLOT_927() -> ret {
                /// @src 2:479,545
                let expr_926 := 0x6c9a6c4a39284e37ed1cf53d337577d14212a4870fb976a4366c693b939918d5
                let _242 := convert_t_rational_49122629484629529244014240937346711770925847994644146912111677022347558721749_by_1_to_t_bytes32(expr_926)

                ret := _242
            }

            /// @src 3:1259,1372
            function constant_GUARD_STORAGE_SLOT_1053() -> ret {
                /// @src 3:1306,1372
                let expr_1052 := 0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8
                let _253 := convert_t_rational_33528237782592280163068556224972516439282563014722366175641814928123294921928_by_1_to_t_bytes32(expr_1052)

                ret := _253
            }

            /// @src 0:2681,2791
            function constant_SAFE_TX_TYPEHASH_45() -> ret {
                /// @src 0:2725,2791
                let expr_44 := 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
                let _213 := convert_t_rational_84814075808141314178395468817534025465894426928601295766380145544921651250904_by_1_to_t_bytes32(expr_44)

                ret := _213
            }

            /// @src 4:951,1008
            function constant_SENTINEL_MODULES_1137() -> ret {
                /// @src 4:1004,1007
                let expr_1135 := 0x01
                /// @src 4:996,1008
                let expr_1136 := convert_t_rational_1_by_1_to_t_address(expr_1135)
                let _260 := expr_1136

                ret := _260
            }

            /// @src 5:635,691
            function constant_SENTINEL_OWNERS_1555() -> ret {
                /// @src 5:687,690
                let expr_1553 := 0x01
                /// @src 5:679,691
                let expr_1554 := convert_t_rational_1_by_1_to_t_address(expr_1553)
                let _190 := expr_1554

                ret := _190
            }

            /// @src 0:2205,2245
            function constant_VERSION_39() -> ret_mpos {
                /// @src 0:2238,2245
                let _1_mpos := convert_t_stringliteral_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673_to_t_string_memory_ptr()

                ret_mpos := _1_mpos
            }

            function convert_array_t_array$_t_address_$dyn_calldata_ptr_to_t_array$_t_address_$dyn_memory_ptr(value, length) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                abi_decode_available_length_t_array$_t_address_$dyn_memory_ptr(value, length, calldatasize())

            }

            function convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(value, length) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                abi_decode_available_length_t_bytes_memory_ptr(value, length, calldatasize())

            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            function convert_t_address_to_t_contract$_Guard_$1017(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_Guard_$1017(value)
            }

            function convert_t_address_to_t_contract$_ISignatureValidator_$2293(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ISignatureValidator_$2293(value)
            }

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function convert_t_contract$_FallbackManager_$976_to_t_address(value) -> converted {
                converted := convert_t_contract$_FallbackManager_$976_to_t_uint160(value)
            }

            function convert_t_contract$_FallbackManager_$976_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_Guard_$1017_to_t_address(value) -> converted {
                converted := convert_t_contract$_Guard_$1017_to_t_uint160(value)
            }

            function convert_t_contract$_Guard_$1017_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_ISignatureValidator_$2293_to_t_address(value) -> converted {
                converted := convert_t_contract$_ISignatureValidator_$2293_to_t_uint160(value)
            }

            function convert_t_contract$_ISignatureValidator_$2293_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_OwnerManager_$2044_to_t_address(value) -> converted {
                converted := convert_t_contract$_OwnerManager_$2044_to_t_uint160(value)
            }

            function convert_t_contract$_OwnerManager_$2044_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_Safe_$914_to_t_address_payable(value) -> converted {
                converted := convert_t_contract$_Safe_$914_to_t_uint160(value)
            }

            function convert_t_contract$_Safe_$914_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_contract$_SelfAuthorized_$2319_to_t_address(value) -> converted {
                converted := convert_t_contract$_SelfAuthorized_$2319_to_t_uint160(value)
            }

            function convert_t_contract$_SelfAuthorized_$2319_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_enum$_Operation_$2325_to_t_uint8(value) -> converted {
                converted := cleanup_t_enum$_Operation_$2325(value)
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_1_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_1_by_1_to_t_uint160(value)
            }

            function convert_t_rational_1_by_1_to_t_bytes1(value) -> converted {
                converted := shift_left_248(cleanup_t_rational_1_by_1(value))
            }

            function convert_t_rational_1_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_2500_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_25_by_1_to_t_bytes1(value) -> converted {
                converted := shift_left_248(cleanup_t_rational_25_by_1(value))
            }

            function convert_t_rational_2835717307_by_1_to_t_bytes4(value) -> converted {
                converted := shift_left_224(cleanup_t_rational_2835717307_by_1(value))
            }

            function convert_t_rational_30_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_32523383700587834770323112271211932718128200013265661849047136999858837557784_by_1_to_t_bytes32(value) -> converted {
                converted := shift_left_0(cleanup_t_rational_32523383700587834770323112271211932718128200013265661849047136999858837557784_by_1(value))
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_33528237782592280163068556224972516439282563014722366175641814928123294921928_by_1_to_t_bytes32(value) -> converted {
                converted := shift_left_0(cleanup_t_rational_33528237782592280163068556224972516439282563014722366175641814928123294921928_by_1(value))
            }

            function convert_t_rational_49122629484629529244014240937346711770925847994644146912111677022347558721749_by_1_to_t_bytes32(value) -> converted {
                converted := shift_left_0(cleanup_t_rational_49122629484629529244014240937346711770925847994644146912111677022347558721749_by_1(value))
            }

            function convert_t_rational_4_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_500_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_549534475_by_1_to_t_bytes4(value) -> converted {
                converted := shift_left_224(cleanup_t_rational_549534475_by_1(value))
            }

            function convert_t_rational_63_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_65_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_84814075808141314178395468817534025465894426928601295766380145544921651250904_by_1_to_t_bytes32(value) -> converted {
                converted := shift_left_0(cleanup_t_rational_84814075808141314178395468817534025465894426928601295766380145544921651250904_by_1(value))
            }

            function convert_t_stringliteral_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673()
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_contract$_Guard_$1017(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint160_to_t_contract$_ISignatureValidator_$2293(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function copy_calldata_to_memory(src, dst, length) {
                calldatacopy(dst, src, length)
                // clear end
                mstore(add(dst, length), 0)
            }

            function copy_literal_to_memory_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(5)
                store_literal_in_memory_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673(add(memPtr, 32))
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function fun__2065() {
                /// @src 7:496,580

                /// @src 7:551,561
                let expr_2059 := caller()
                /// @src 7:563,572
                let expr_2061 := callvalue()
                /// @src 7:538,573
                let _521 := 0x3d0ce9bfc3ed7d6862dbb28b2dea94561fe714a1b4d019aa8af39730d1ad7c3d
                {
                    let _522 := allocate_unbounded()
                    let _523 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_522 , expr_2061)
                    log2(_522, sub(_523, _522) , _521, expr_2059)
                }
            }

            function fun__975() {
                /// @src 2:3163,4055

                /// @src 2:3208,3237
                let expr_971 := constant_FALLBACK_HANDLER_STORAGE_SLOT_927()
                /// @src 2:3193,3237
                let var_slot_970 := expr_971
                /// @src 2:3303,4049
                {
                    let usr$handler := sload(var_slot_970)
                    if iszero(usr$handler) { return(0, 0) }
                    calldatacopy(0, 0, calldatasize())
                    mstore(calldatasize(), shl(96, caller()))
                    let usr$success := call(gas(), usr$handler, 0, 0, add(calldatasize(), 20), 0, 0)
                    returndatacopy(0, 0, returndatasize())
                    if iszero(usr$success) { revert(0, returndatasize()) }
                    return(0, returndatasize())
                }

            }

            function fun_addOwnerWithThreshold_1753(var_owner_1683, var__threshold_1685) {
                /// @src 5:2399,3024

                modifier_authorized_1688(var_owner_1683, var__threshold_1685)
            }

            function fun_addOwnerWithThreshold_1753_inner(var_owner_1683, var__threshold_1685) {
                /// @src 5:2399,3024

                /// @src 5:2575,2580
                let _399 := var_owner_1683
                let expr_1691 := _399
                /// @src 5:2592,2593
                let expr_1694 := 0x00
                /// @src 5:2584,2594
                let expr_1695 := convert_t_rational_0_by_1_to_t_address(expr_1694)
                /// @src 5:2575,2594
                let expr_1696 := iszero(eq(cleanup_t_address(expr_1691), cleanup_t_address(expr_1695)))
                /// @src 5:2575,2622
                let expr_1700 := expr_1696
                if expr_1700 {
                    /// @src 5:2598,2603
                    let _400 := var_owner_1683
                    let expr_1697 := _400
                    /// @src 5:2607,2622
                    let expr_1698 := constant_SENTINEL_OWNERS_1555()
                    /// @src 5:2598,2622
                    let expr_1699 := iszero(eq(cleanup_t_address(expr_1697), cleanup_t_address(expr_1698)))
                    /// @src 5:2575,2622
                    expr_1700 := expr_1699
                }
                /// @src 5:2575,2648
                let expr_1707 := expr_1700
                if expr_1707 {
                    /// @src 5:2626,2631
                    let _401 := var_owner_1683
                    let expr_1701 := _401
                    /// @src 5:2643,2647
                    let expr_1704_address := address()
                    /// @src 5:2635,2648
                    let expr_1705 := convert_t_contract$_OwnerManager_$2044_to_t_address(expr_1704_address)
                    /// @src 5:2626,2648
                    let expr_1706 := iszero(eq(cleanup_t_address(expr_1701), cleanup_t_address(expr_1705)))
                    /// @src 5:2575,2648
                    expr_1707 := expr_1706
                }
                /// @src 5:2567,2658
                require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(expr_1707)
                /// @src 5:2716,2722
                let _402 := 0x02
                let expr_1712 := _402
                /// @src 5:2723,2728
                let _403 := var_owner_1683
                let expr_1713 := _403
                /// @src 5:2716,2729
                let _404 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1712,expr_1713)
                let _405 := read_from_storage_split_offset_0_t_address(_404)
                let expr_1714 := _405
                /// @src 5:2741,2742
                let expr_1717 := 0x00
                /// @src 5:2733,2743
                let expr_1718 := convert_t_rational_0_by_1_to_t_address(expr_1717)
                /// @src 5:2716,2743
                let expr_1719 := eq(cleanup_t_address(expr_1714), cleanup_t_address(expr_1718))
                /// @src 5:2708,2753
                require_helper_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(expr_1719)
                /// @src 5:2779,2785
                let _406 := 0x02
                let expr_1726 := _406
                /// @src 5:2786,2801
                let expr_1727 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:2779,2802
                let _407 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1726,expr_1727)
                let _408 := read_from_storage_split_offset_0_t_address(_407)
                let expr_1728 := _408
                /// @src 5:2763,2769
                let _409 := 0x02
                let expr_1723 := _409
                /// @src 5:2770,2775
                let _410 := var_owner_1683
                let expr_1724 := _410
                /// @src 5:2763,2776
                let _411 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1723,expr_1724)
                /// @src 5:2763,2802
                update_storage_value_offset_0t_address_to_t_address(_411, expr_1728)
                let expr_1729 := expr_1728
                /// @src 5:2838,2843
                let _412 := var_owner_1683
                let expr_1734 := _412
                /// @src 5:2812,2818
                let _413 := 0x02
                let expr_1731 := _413
                /// @src 5:2819,2834
                let expr_1732 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:2812,2835
                let _414 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1731,expr_1732)
                /// @src 5:2812,2843
                update_storage_value_offset_0t_address_to_t_address(_414, expr_1734)
                let expr_1735 := expr_1734
                /// @src 5:2853,2865
                let _416 := read_from_storage_split_offset_0_t_uint256(0x03)
                let _415 := increment_t_uint256(_416)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, _415)
                let expr_1738 := _416
                /// @src 5:2891,2896
                let _417 := var_owner_1683
                let expr_1741 := _417
                /// @src 5:2880,2897
                let _418 := 0x9465fa0c962cc76958e6373a993326400c1c94f8be2fe3a952adfa7f60b2ea26
                {
                    let _419 := allocate_unbounded()
                    let _420 := abi_encode_tuple__to__fromStack(_419 )
                    log2(_419, sub(_420, _419) , _418, expr_1741)
                }/// @src 5:2965,2974
                let _421 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_1744 := _421
                /// @src 5:2978,2988
                let _422 := var__threshold_1685
                let expr_1745 := _422
                /// @src 5:2965,2988
                let expr_1746 := iszero(eq(cleanup_t_uint256(expr_1744), cleanup_t_uint256(expr_1745)))
                /// @src 5:2961,3017
                if expr_1746 {
                    /// @src 5:2990,3005
                    let expr_1747_functionIdentifier := 1961
                    /// @src 5:3006,3016
                    let _423 := var__threshold_1685
                    let expr_1748 := _423
                    fun_changeThreshold_1961(expr_1748)
                    /// @src 5:2961,3017
                }

            }

            function fun_add_2255(var_a_2233, var_b_2235) -> var__2238 {
                /// @src 13:1335,1480
                /// @src 13:1393,1400
                let zero_t_uint256_554 := zero_value_for_split_t_uint256()
                var__2238 := zero_t_uint256_554

                /// @src 13:1424,1425
                let _555 := var_a_2233
                let expr_2242 := _555
                /// @src 13:1428,1429
                let _556 := var_b_2235
                let expr_2243 := _556
                /// @src 13:1424,1429
                let expr_2244 := checked_add_t_uint256(expr_2242, expr_2243)

                /// @src 13:1412,1429
                let var_c_2241 := expr_2244
                /// @src 13:1447,1448
                let _557 := var_c_2241
                let expr_2247 := _557
                /// @src 13:1452,1453
                let _558 := var_a_2233
                let expr_2248 := _558
                /// @src 13:1447,1453
                let expr_2249 := iszero(lt(cleanup_t_uint256(expr_2247), cleanup_t_uint256(expr_2248)))
                /// @src 13:1439,1454
                require_helper(expr_2249)
                /// @src 13:1472,1473
                let _559 := var_c_2241
                let expr_2252 := _559
                /// @src 13:1465,1473
                var__2238 := expr_2252
                leave

            }

            function fun_approveHash_776(var_hashToApprove_744) {
                /// @src 0:18134,18362

                /// @src 0:18205,18211
                let _192 := 0x02
                let expr_748 := _192
                /// @src 0:18212,18222
                let expr_750 := caller()
                /// @src 0:18205,18223
                let _193 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_748,expr_750)
                let _194 := read_from_storage_split_offset_0_t_address(_193)
                let expr_751 := _194
                /// @src 0:18235,18236
                let expr_754 := 0x00
                /// @src 0:18227,18237
                let expr_755 := convert_t_rational_0_by_1_to_t_address(expr_754)
                /// @src 0:18205,18237
                let expr_756 := iszero(eq(cleanup_t_address(expr_751), cleanup_t_address(expr_755)))
                /// @src 0:18197,18247
                require_helper_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8(expr_756)
                /// @src 0:18301,18302
                let expr_766 := 0x01
                /// @src 0:18257,18302
                let _195 := convert_t_rational_1_by_1_to_t_uint256(expr_766)
                /// @src 0:18257,18271
                let _196 := 0x08
                let expr_760 := _196
                /// @src 0:18272,18282
                let expr_762 := caller()
                /// @src 0:18257,18283
                let _197 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_bytes32_$_t_uint256_$_$_of_t_address(expr_760,expr_762)
                let _198 := _197
                let expr_764 := _198
                /// @src 0:18284,18297
                let _199 := var_hashToApprove_744
                let expr_763 := _199
                /// @src 0:18257,18298
                let _200 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_764,expr_763)
                /// @src 0:18257,18302
                update_storage_value_offset_0t_uint256_to_t_uint256(_200, _195)
                let expr_767 := _195
                /// @src 0:18329,18342
                let _201 := var_hashToApprove_744
                let expr_770 := _201
                /// @src 0:18344,18354
                let expr_772 := caller()
                /// @src 0:18317,18355
                let _202 := 0xf2a0eb156472d1440255b0d7c1e19cc07115d1051fe605b0dce69acfec884d9c
                {
                    let _203 := allocate_unbounded()
                    let _204 := abi_encode_tuple__to__fromStack(_203 )
                    log3(_203, sub(_204, _203) , _202, expr_770, expr_772)
                }
            }

            function fun_changeThreshold_1961(var__threshold_1933) {
                /// @src 5:5398,5758

                modifier_authorized_1936(var__threshold_1933)
            }

            function fun_changeThreshold_1961_inner(var__threshold_1933) {
                /// @src 5:5398,5758

                /// @src 5:5548,5558
                let _488 := var__threshold_1933
                let expr_1939 := _488
                /// @src 5:5562,5572
                let _489 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_1940 := _489
                /// @src 5:5548,5572
                let expr_1941 := iszero(gt(cleanup_t_uint256(expr_1939), cleanup_t_uint256(expr_1940)))
                /// @src 5:5540,5582
                require_helper_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(expr_1941)
                /// @src 5:5652,5662
                let _490 := var__threshold_1933
                let expr_1946 := _490
                /// @src 5:5666,5667
                let expr_1947 := 0x01
                /// @src 5:5652,5667
                let expr_1948 := iszero(lt(cleanup_t_uint256(expr_1946), convert_t_rational_1_by_1_to_t_uint256(expr_1947)))
                /// @src 5:5644,5677
                require_helper_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b(expr_1948)
                /// @src 5:5699,5709
                let _491 := var__threshold_1933
                let expr_1953 := _491
                /// @src 5:5687,5709
                update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_1953)
                let expr_1954 := expr_1953
                /// @src 5:5741,5750
                let _492 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_1957 := _492
                /// @src 5:5724,5751
                let _493 := 0x610f7ff2b304ae8903c3de74c60c6ab1f7d6226b3f52c5161905bb5ad4039c93
                {
                    let _494 := allocate_unbounded()
                    let _495 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_494 , expr_1957)
                    log1(_494, sub(_495, _494) , _493)
                }
            }

            function fun_checkNSignatures_741(var_dataHash_494, var_data_496_mpos, var_signatures_498_mpos, var_requiredSignatures_500) {
                /// @src 0:13893,17730

                /// @src 0:14106,14116
                let _118_mpos := var_signatures_498_mpos
                let expr_504_mpos := _118_mpos
                /// @src 0:14106,14123
                let expr_505 := array_length_t_bytes_memory_ptr(expr_504_mpos)
                /// @src 0:14127,14145
                let _119 := var_requiredSignatures_500
                let expr_506 := _119
                /// @src 0:14127,14149
                let expr_507_self := expr_506
                let expr_507_functionIdentifier := 2205
                /// @src 0:14150,14152
                let expr_508 := 0x41
                /// @src 0:14127,14153
                let _120 := convert_t_rational_65_by_1_to_t_uint256(expr_508)
                let expr_509 := fun_mul_2205(expr_507_self, _120)
                /// @src 0:14106,14153
                let expr_510 := iszero(lt(cleanup_t_uint256(expr_505), cleanup_t_uint256(expr_509)))
                /// @src 0:14098,14163
                require_helper_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232(expr_510)
                /// @src 0:14253,14254
                let expr_518 := 0x00
                /// @src 0:14245,14255
                let expr_519 := convert_t_rational_0_by_1_to_t_address(expr_518)
                /// @src 0:14225,14255
                let var_lastOwner_515 := expr_519
                /// @src 0:14265,14285
                let var_currentOwner_522
                let zero_t_address_121 := zero_value_for_split_t_address()
                var_currentOwner_522 := zero_t_address_121
                /// @src 0:14295,14302
                let var_v_525
                let zero_t_uint8_122 := zero_value_for_split_t_uint8()
                var_v_525 := zero_t_uint8_122
                /// @src 0:14312,14321
                let var_r_528
                let zero_t_bytes32_123 := zero_value_for_split_t_bytes32()
                var_r_528 := zero_t_bytes32_123
                /// @src 0:14331,14340
                let var_s_531
                let zero_t_bytes32_124 := zero_value_for_split_t_bytes32()
                var_s_531 := zero_t_bytes32_124
                /// @src 0:14350,14359
                let var_i_534
                let zero_t_uint256_125 := zero_value_for_split_t_uint256()
                var_i_534 := zero_t_uint256_125
                /// @src 0:14369,17724
                for {
                    /// @src 0:14378,14379
                    let expr_537 := 0x00
                    /// @src 0:14374,14379
                    let _126 := convert_t_rational_0_by_1_to_t_uint256(expr_537)
                    var_i_534 := _126
                    let expr_538 := _126
                    } 1 {
                    /// @src 0:14405,14408
                    let _128 := var_i_534
                    let _127 := increment_t_uint256(_128)
                    var_i_534 := _127
                    let expr_544 := _128
                }
                {
                    /// @src 0:14381,14382
                    let _129 := var_i_534
                    let expr_540 := _129
                    /// @src 0:14385,14403
                    let _130 := var_requiredSignatures_500
                    let expr_541 := _130
                    /// @src 0:14381,14403
                    let expr_542 := lt(cleanup_t_uint256(expr_540), cleanup_t_uint256(expr_541))
                    if iszero(expr_542) { break }
                    /// @src 0:14436,14450
                    let expr_550_functionIdentifier := 2112
                    /// @src 0:14451,14461
                    let _131_mpos := var_signatures_498_mpos
                    let expr_551_mpos := _131_mpos
                    /// @src 0:14463,14464
                    let _132 := var_i_534
                    let expr_552 := _132
                    /// @src 0:14436,14465
                    let expr_553_component_1, expr_553_component_2, expr_553_component_3 := fun_signatureSplit_2112(expr_551_mpos, expr_552)
                    /// @src 0:14424,14465
                    var_s_531 := expr_553_component_3
                    var_r_528 := expr_553_component_2
                    var_v_525 := expr_553_component_1
                    /// @src 0:14483,14484
                    let _133 := var_v_525
                    let expr_556 := _133
                    /// @src 0:14488,14489
                    let expr_557 := 0x00
                    /// @src 0:14483,14489
                    let expr_558 := eq(cleanup_t_uint8(expr_556), convert_t_rational_0_by_1_to_t_uint8(expr_557))
                    /// @src 0:14479,17547
                    switch expr_558
                    case 0 {
                        /// @src 0:16426,16427
                        let _134 := var_v_525
                        let expr_647 := _134
                        /// @src 0:16431,16432
                        let expr_648 := 0x01
                        /// @src 0:16426,16432
                        let expr_649 := eq(cleanup_t_uint8(expr_647), convert_t_rational_1_by_1_to_t_uint8(expr_648))
                        /// @src 0:16422,17547
                        switch expr_649
                        case 0 {
                            /// @src 0:16926,16927
                            let _135 := var_v_525
                            let expr_680 := _135
                            /// @src 0:16930,16932
                            let expr_681 := 0x1e
                            /// @src 0:16926,16932
                            let expr_682 := gt(cleanup_t_uint8(expr_680), convert_t_rational_30_by_1_to_t_uint8(expr_681))
                            /// @src 0:16922,17547
                            switch expr_682
                            case 0 {
                                /// @src 0:17514,17522
                                let _136 := var_dataHash_494
                                let expr_703 := _136
                                /// @src 0:17524,17525
                                let _137 := var_v_525
                                let expr_704 := _137
                                /// @src 0:17527,17528
                                let _138 := var_r_528
                                let expr_705 := _138
                                /// @src 0:17530,17531
                                let _139 := var_s_531
                                let expr_706 := _139
                                /// @src 0:17504,17532

                                let _140 := allocate_unbounded()
                                let _141 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_140 , expr_703, expr_704, expr_705, expr_706)

                                mstore(0, 0)

                                let _142 := staticcall(gas(), 1 , _140, sub(_141, _140), 0, 32)
                                if iszero(_142) { revert_forward_1() }
                                let expr_707 := shift_left_0(mload(0))
                                /// @src 0:17489,17532
                                var_currentOwner_522 := expr_707
                                let expr_708 := expr_707
                                /// @src 0:16922,17547
                            }
                            default {
                                /// @src 0:17276,17284
                                let _143 := var_dataHash_494
                                let expr_689 := _143
                                /// @src 0:17223,17285

                                let expr_690_mpos := allocate_unbounded()
                                let _144 := add(expr_690_mpos, 0x20)

                                let _145 := abi_encode_tuple_packed_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_t_bytes32__to_t_string_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(_144, expr_689)
                                mstore(expr_690_mpos, sub(_145, add(expr_690_mpos, 0x20)))
                                finalize_allocation(expr_690_mpos, sub(_145, expr_690_mpos))
                                /// @src 0:17213,17286
                                let expr_691 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_690_mpos), array_length_t_bytes_memory_ptr(expr_690_mpos))
                                /// @src 0:17288,17289
                                let _146 := var_v_525
                                let expr_692 := _146
                                /// @src 0:17292,17293
                                let expr_693 := 0x04
                                /// @src 0:17288,17293
                                let expr_694 := checked_sub_t_uint8(expr_692, convert_t_rational_4_by_1_to_t_uint8(expr_693))

                                /// @src 0:17295,17296
                                let _147 := var_r_528
                                let expr_695 := _147
                                /// @src 0:17298,17299
                                let _148 := var_s_531
                                let expr_696 := _148
                                /// @src 0:17203,17300

                                let _149 := allocate_unbounded()
                                let _150 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_149 , expr_691, expr_694, expr_695, expr_696)

                                mstore(0, 0)

                                let _151 := staticcall(gas(), 1 , _149, sub(_150, _149), 0, 32)
                                if iszero(_151) { revert_forward_1() }
                                let expr_697 := shift_left_0(mload(0))
                                /// @src 0:17188,17300
                                var_currentOwner_522 := expr_697
                                let expr_698 := expr_697
                                /// @src 0:16922,17547
                            }
                            /// @src 0:16422,17547
                        }
                        default {
                            /// @src 0:16643,16644
                            let _152 := var_r_528
                            let expr_657 := _152
                            /// @src 0:16635,16645
                            let expr_658 := convert_t_bytes32_to_t_uint256(expr_657)
                            /// @src 0:16627,16646
                            let expr_659 := convert_t_uint256_to_t_uint160(expr_658)
                            /// @src 0:16619,16647
                            let expr_660 := convert_t_uint160_to_t_address(expr_659)
                            /// @src 0:16604,16647
                            var_currentOwner_522 := expr_660
                            let expr_661 := expr_660
                            /// @src 0:16818,16828
                            let expr_665 := caller()
                            /// @src 0:16832,16844
                            let _153 := var_currentOwner_522
                            let expr_666 := _153
                            /// @src 0:16818,16844
                            let expr_667 := eq(cleanup_t_address(expr_665), cleanup_t_address(expr_666))
                            /// @src 0:16818,16891
                            let expr_675 := expr_667
                            if iszero(expr_675) {
                                /// @src 0:16848,16862
                                let _154 := 0x08
                                let expr_668 := _154
                                /// @src 0:16863,16875
                                let _155 := var_currentOwner_522
                                let expr_669 := _155
                                /// @src 0:16848,16876
                                let _156 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_bytes32_$_t_uint256_$_$_of_t_address(expr_668,expr_669)
                                let _157 := _156
                                let expr_670 := _157
                                /// @src 0:16877,16885
                                let _158 := var_dataHash_494
                                let expr_671 := _158
                                /// @src 0:16848,16886
                                let _159 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_670,expr_671)
                                let _160 := read_from_storage_split_offset_0_t_uint256(_159)
                                let expr_672 := _160
                                /// @src 0:16890,16891
                                let expr_673 := 0x00
                                /// @src 0:16848,16891
                                let expr_674 := iszero(eq(cleanup_t_uint256(expr_672), convert_t_rational_0_by_1_to_t_uint256(expr_673)))
                                /// @src 0:16818,16891
                                expr_675 := expr_674
                            }
                            /// @src 0:16810,16901
                            require_helper_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b(expr_675)
                            /// @src 0:16422,17547
                        }
                        /// @src 0:14479,17547
                    }
                    default {
                        /// @src 0:14527,14531
                        let _161_mpos := var_data_496_mpos
                        let expr_561_mpos := _161_mpos
                        /// @src 0:14517,14532
                        let expr_562 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_561_mpos), array_length_t_bytes_memory_ptr(expr_561_mpos))
                        /// @src 0:14536,14544
                        let _162 := var_dataHash_494
                        let expr_563 := _162
                        /// @src 0:14517,14544
                        let expr_564 := eq(cleanup_t_bytes32(expr_562), cleanup_t_bytes32(expr_563))
                        /// @src 0:14509,14554
                        require_helper_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888(expr_564)
                        /// @src 0:14771,14772
                        let _163 := var_r_528
                        let expr_575 := _163
                        /// @src 0:14763,14773
                        let expr_576 := convert_t_bytes32_to_t_uint256(expr_575)
                        /// @src 0:14755,14774
                        let expr_577 := convert_t_uint256_to_t_uint160(expr_576)
                        /// @src 0:14747,14775
                        let expr_578 := convert_t_uint160_to_t_address(expr_577)
                        /// @src 0:14732,14775
                        var_currentOwner_522 := expr_578
                        let expr_579 := expr_578
                        /// @src 0:15170,15171
                        let _164 := var_s_531
                        let expr_584 := _164
                        /// @src 0:15162,15172
                        let expr_585 := convert_t_bytes32_to_t_uint256(expr_584)
                        /// @src 0:15176,15194
                        let _165 := var_requiredSignatures_500
                        let expr_586 := _165
                        /// @src 0:15176,15198
                        let expr_587_self := expr_586
                        let expr_587_functionIdentifier := 2205
                        /// @src 0:15199,15201
                        let expr_588 := 0x41
                        /// @src 0:15176,15202
                        let _166 := convert_t_rational_65_by_1_to_t_uint256(expr_588)
                        let expr_589 := fun_mul_2205(expr_587_self, _166)
                        /// @src 0:15162,15202
                        let expr_590 := iszero(lt(cleanup_t_uint256(expr_585), cleanup_t_uint256(expr_589)))
                        /// @src 0:15154,15212
                        require_helper_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a(expr_590)
                        /// @src 0:15360,15361
                        let _167 := var_s_531
                        let expr_597 := _167
                        /// @src 0:15352,15362
                        let expr_598 := convert_t_bytes32_to_t_uint256(expr_597)
                        /// @src 0:15352,15366
                        let expr_599_self := expr_598
                        let expr_599_functionIdentifier := 2255
                        /// @src 0:15367,15369
                        let expr_600 := 0x20
                        /// @src 0:15352,15370
                        let _168 := convert_t_rational_32_by_1_to_t_uint256(expr_600)
                        let expr_601 := fun_add_2255(expr_599_self, _168)
                        /// @src 0:15374,15384
                        let _169_mpos := var_signatures_498_mpos
                        let expr_602_mpos := _169_mpos
                        /// @src 0:15374,15391
                        let expr_603 := array_length_t_bytes_memory_ptr(expr_602_mpos)
                        /// @src 0:15352,15391
                        let expr_604 := iszero(gt(cleanup_t_uint256(expr_601), cleanup_t_uint256(expr_603)))
                        /// @src 0:15344,15401
                        require_helper_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457(expr_604)
                        /// @src 0:15545,15573
                        let var_contractSignatureLen_609
                        let zero_t_uint256_170 := zero_value_for_split_t_uint256()
                        var_contractSignatureLen_609 := zero_t_uint256_170
                        /// @src 0:15655,15764
                        {
                            var_contractSignatureLen_609 := mload(add(add(var_signatures_498_mpos, var_s_531), 0x20))
                        }
                        /// @src 0:15797,15798
                        let _171 := var_s_531
                        let expr_615 := _171
                        /// @src 0:15789,15799
                        let expr_616 := convert_t_bytes32_to_t_uint256(expr_615)
                        /// @src 0:15789,15803
                        let expr_617_self := expr_616
                        let expr_617_functionIdentifier := 2255
                        /// @src 0:15804,15806
                        let expr_618 := 0x20
                        /// @src 0:15789,15807
                        let _172 := convert_t_rational_32_by_1_to_t_uint256(expr_618)
                        let expr_619 := fun_add_2255(expr_617_self, _172)
                        /// @src 0:15789,15811
                        let expr_620_self := expr_619
                        let expr_620_functionIdentifier := 2255
                        /// @src 0:15812,15832
                        let _173 := var_contractSignatureLen_609
                        let expr_621 := _173
                        /// @src 0:15789,15833
                        let expr_622 := fun_add_2255(expr_620_self, expr_621)
                        /// @src 0:15837,15847
                        let _174_mpos := var_signatures_498_mpos
                        let expr_623_mpos := _174_mpos
                        /// @src 0:15837,15854
                        let expr_624 := array_length_t_bytes_memory_ptr(expr_623_mpos)
                        /// @src 0:15789,15854
                        let expr_625 := iszero(gt(cleanup_t_uint256(expr_622), cleanup_t_uint256(expr_624)))
                        /// @src 0:15781,15864
                        require_helper_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f(expr_625)
                        /// @src 0:15918,15948
                        let var_contractSignature_630_mpos
                        let zero_t_bytes_memory_ptr_175_mpos := zero_value_for_split_t_bytes_memory_ptr()
                        var_contractSignature_630_mpos := zero_t_bytes_memory_ptr_175_mpos
                        /// @src 0:16030,16268
                        {
                            var_contractSignature_630_mpos := add(add(var_signatures_498_mpos, var_s_531), 0x20)
                        }
                        /// @src 0:16313,16325
                        let _176 := var_currentOwner_522
                        let expr_635 := _176
                        /// @src 0:16293,16326
                        let expr_636_address := convert_t_address_to_t_contract$_ISignatureValidator_$2293(expr_635)
                        /// @src 0:16293,16343
                        let expr_637_address := convert_t_contract$_ISignatureValidator_$2293_to_t_address(expr_636_address)
                        let expr_637_functionSelector := 0x20c13b0b
                        /// @src 0:16344,16348
                        let _177_mpos := var_data_496_mpos
                        let expr_638_mpos := _177_mpos
                        /// @src 0:16350,16367
                        let _178_mpos := var_contractSignature_630_mpos
                        let expr_639_mpos := _178_mpos
                        /// @src 0:16293,16368
                        if iszero(extcodesize(expr_637_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                        // storage for arguments and returned data
                        let _179 := allocate_unbounded()
                        mstore(_179, shift_left_224(expr_637_functionSelector))
                        let _180 := abi_encode_tuple_t_bytes_memory_ptr_t_bytes_memory_ptr__to_t_bytes_memory_ptr_t_bytes_memory_ptr__fromStack(add(_179, 4) , expr_638_mpos, expr_639_mpos)

                        let _181 := staticcall(gas(), expr_637_address,  _179, sub(_180, _179), _179, 32)

                        if iszero(_181) { revert_forward_1() }

                        let expr_640
                        if _181 {

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_179, returndatasize())

                            // decode return parameters from external try-call into retVars
                            expr_640 :=  abi_decode_tuple_t_bytes4_fromMemory(_179, add(_179, returndatasize()))
                        }
                        /// @src 0:16372,16391
                        let expr_641 := constant_EIP1271_MAGIC_VALUE_2279()
                        /// @src 0:16293,16391
                        let expr_642 := eq(cleanup_t_bytes4(expr_640), cleanup_t_bytes4(expr_641))
                        /// @src 0:16285,16401
                        require_helper_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139(expr_642)
                        /// @src 0:14479,17547
                    }
                    /// @src 0:17568,17580
                    let _183 := var_currentOwner_522
                    let expr_715 := _183
                    /// @src 0:17583,17592
                    let _184 := var_lastOwner_515
                    let expr_716 := _184
                    /// @src 0:17568,17592
                    let expr_717 := gt(cleanup_t_address(expr_715), cleanup_t_address(expr_716))
                    /// @src 0:17568,17630
                    let expr_726 := expr_717
                    if expr_726 {
                        /// @src 0:17596,17602
                        let _185 := 0x02
                        let expr_718 := _185
                        /// @src 0:17603,17615
                        let _186 := var_currentOwner_522
                        let expr_719 := _186
                        /// @src 0:17596,17616
                        let _187 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_718,expr_719)
                        let _188 := read_from_storage_split_offset_0_t_address(_187)
                        let expr_720 := _188
                        /// @src 0:17628,17629
                        let expr_723 := 0x00
                        /// @src 0:17620,17630
                        let expr_724 := convert_t_rational_0_by_1_to_t_address(expr_723)
                        /// @src 0:17596,17630
                        let expr_725 := iszero(eq(cleanup_t_address(expr_720), cleanup_t_address(expr_724)))
                        /// @src 0:17568,17630
                        expr_726 := expr_725
                    }
                    /// @src 0:17568,17665
                    let expr_730 := expr_726
                    if expr_730 {
                        /// @src 0:17634,17646
                        let _189 := var_currentOwner_522
                        let expr_727 := _189
                        /// @src 0:17650,17665
                        let expr_728 := constant_SENTINEL_OWNERS_1555()
                        /// @src 0:17634,17665
                        let expr_729 := iszero(eq(cleanup_t_address(expr_727), cleanup_t_address(expr_728)))
                        /// @src 0:17568,17665
                        expr_730 := expr_729
                    }
                    /// @src 0:17560,17675
                    require_helper_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159(expr_730)
                    /// @src 0:17701,17713
                    let _191 := var_currentOwner_522
                    let expr_735 := _191
                    /// @src 0:17689,17713
                    var_lastOwner_515 := expr_735
                    let expr_736 := expr_735
                }

            }

            function fun_checkSignatures_491(var_dataHash_465, var_data_467_mpos, var_signatures_469_mpos) {
                /// @src 0:12859,13212

                /// @src 0:13047,13056
                let _112 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_474 := _112
                /// @src 0:13026,13056
                let var__threshold_473 := expr_474
                /// @src 0:13115,13125
                let _113 := var__threshold_473
                let expr_477 := _113
                /// @src 0:13128,13129
                let expr_478 := 0x00
                /// @src 0:13115,13129
                let expr_479 := gt(cleanup_t_uint256(expr_477), convert_t_rational_0_by_1_to_t_uint256(expr_478))
                /// @src 0:13107,13139
                require_helper_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730(expr_479)
                /// @src 0:13149,13165
                let expr_483_functionIdentifier := 741
                /// @src 0:13166,13174
                let _114 := var_dataHash_465
                let expr_484 := _114
                /// @src 0:13176,13180
                let _115_mpos := var_data_467_mpos
                let expr_485_mpos := _115_mpos
                /// @src 0:13182,13192
                let _116_mpos := var_signatures_469_mpos
                let expr_486_mpos := _116_mpos
                /// @src 0:13194,13204
                let _117 := var__threshold_473
                let expr_487 := _117
                fun_checkNSignatures_741(expr_484, expr_485_mpos, expr_486_mpos, expr_487)

            }

            function fun_disableModule_1308(var_prevModule_1256, var_module_1258) {
                /// @src 4:2676,3099

                modifier_authorized_1261(var_prevModule_1256, var_module_1258)
            }

            function fun_disableModule_1308_inner(var_prevModule_1256, var_module_1258) {
                /// @src 4:2676,3099

                /// @src 4:2853,2859
                let _289 := var_module_1258
                let expr_1264 := _289
                /// @src 4:2871,2872
                let expr_1267 := 0x00
                /// @src 4:2863,2873
                let expr_1268 := convert_t_rational_0_by_1_to_t_address(expr_1267)
                /// @src 4:2853,2873
                let expr_1269 := iszero(eq(cleanup_t_address(expr_1264), cleanup_t_address(expr_1268)))
                /// @src 4:2853,2903
                let expr_1273 := expr_1269
                if expr_1273 {
                    /// @src 4:2877,2883
                    let _290 := var_module_1258
                    let expr_1270 := _290
                    /// @src 4:2887,2903
                    let expr_1271 := constant_SENTINEL_MODULES_1137()
                    /// @src 4:2877,2903
                    let expr_1272 := iszero(eq(cleanup_t_address(expr_1270), cleanup_t_address(expr_1271)))
                    /// @src 4:2853,2903
                    expr_1273 := expr_1272
                }
                /// @src 4:2845,2913
                require_helper_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f(expr_1273)
                /// @src 4:2931,2938
                let _291 := 0x01
                let expr_1278 := _291
                /// @src 4:2939,2949
                let _292 := var_prevModule_1256
                let expr_1279 := _292
                /// @src 4:2931,2950
                let _293 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1278,expr_1279)
                let _294 := read_from_storage_split_offset_0_t_address(_293)
                let expr_1280 := _294
                /// @src 4:2954,2960
                let _295 := var_module_1258
                let expr_1281 := _295
                /// @src 4:2931,2960
                let expr_1282 := eq(cleanup_t_address(expr_1280), cleanup_t_address(expr_1281))
                /// @src 4:2923,2970
                require_helper_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be(expr_1282)
                /// @src 4:3002,3009
                let _296 := 0x01
                let expr_1289 := _296
                /// @src 4:3010,3016
                let _297 := var_module_1258
                let expr_1290 := _297
                /// @src 4:3002,3017
                let _298 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1289,expr_1290)
                let _299 := read_from_storage_split_offset_0_t_address(_298)
                let expr_1291 := _299
                /// @src 4:2980,2987
                let _300 := 0x01
                let expr_1286 := _300
                /// @src 4:2988,2998
                let _301 := var_prevModule_1256
                let expr_1287 := _301
                /// @src 4:2980,2999
                let _302 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1286,expr_1287)
                /// @src 4:2980,3017
                update_storage_value_offset_0t_address_to_t_address(_302, expr_1291)
                let expr_1292 := expr_1291
                /// @src 4:3053,3054
                let expr_1299 := 0x00
                /// @src 4:3045,3055
                let expr_1300 := convert_t_rational_0_by_1_to_t_address(expr_1299)
                /// @src 4:3027,3034
                let _303 := 0x01
                let expr_1294 := _303
                /// @src 4:3035,3041
                let _304 := var_module_1258
                let expr_1295 := _304
                /// @src 4:3027,3042
                let _305 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1294,expr_1295)
                /// @src 4:3027,3055
                update_storage_value_offset_0t_address_to_t_address(_305, expr_1300)
                let expr_1301 := expr_1300
                /// @src 4:3085,3091
                let _306 := var_module_1258
                let expr_1304 := _306
                /// @src 4:3070,3092
                let _307 := 0xaab4fa2b463f581b2b32cb3b7e3b704b9ce37cc209b5fb4d77e593ace4054276
                {
                    let _308 := allocate_unbounded()
                    let _309 := abi_encode_tuple__to__fromStack(_308 )
                    log2(_308, sub(_309, _308) , _307, expr_1304)
                }
            }

            function fun_domainSeparator_806() -> var__793 {
                /// @src 0:18902,19051
                /// @src 0:18950,18957
                let zero_t_bytes32_208 := zero_value_for_split_t_bytes32()
                var__793 := zero_t_bytes32_208

                /// @src 0:18997,19022
                let expr_798 := constant_DOMAIN_SEPARATOR_TYPEHASH_42()
                /// @src 0:19024,19034
                let expr_799_functionIdentifier := 789
                /// @src 0:19024,19036
                let expr_800 := fun_getChainId_789()
                /// @src 0:19038,19042
                let expr_801_address := address()
                /// @src 0:18986,19043

                let expr_802_mpos := allocate_unbounded()
                let _210 := add(expr_802_mpos, 0x20)

                let _211 := abi_encode_tuple_t_bytes32_t_uint256_t_contract$_Safe_$914__to_t_bytes32_t_uint256_t_address_payable__fromStack(_210, expr_798, expr_800, expr_801_address)
                mstore(expr_802_mpos, sub(_211, add(expr_802_mpos, 0x20)))
                finalize_allocation(expr_802_mpos, sub(_211, expr_802_mpos))
                /// @src 0:18976,19044
                let expr_803 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_802_mpos), array_length_t_bytes_memory_ptr(expr_802_mpos))
                /// @src 0:18969,19044
                var__793 := expr_803
                leave

            }

            function fun_enableModule_1253(var_module_1203) {
                /// @src 4:2000,2426

                modifier_authorized_1206(var_module_1203)
            }

            function fun_enableModule_1253_inner(var_module_1203) {
                /// @src 4:2000,2426

                /// @src 4:2128,2134
                let _270 := var_module_1203
                let expr_1209 := _270
                /// @src 4:2146,2147
                let expr_1212 := 0x00
                /// @src 4:2138,2148
                let expr_1213 := convert_t_rational_0_by_1_to_t_address(expr_1212)
                /// @src 4:2128,2148
                let expr_1214 := iszero(eq(cleanup_t_address(expr_1209), cleanup_t_address(expr_1213)))
                /// @src 4:2128,2178
                let expr_1218 := expr_1214
                if expr_1218 {
                    /// @src 4:2152,2158
                    let _271 := var_module_1203
                    let expr_1215 := _271
                    /// @src 4:2162,2178
                    let expr_1216 := constant_SENTINEL_MODULES_1137()
                    /// @src 4:2152,2178
                    let expr_1217 := iszero(eq(cleanup_t_address(expr_1215), cleanup_t_address(expr_1216)))
                    /// @src 4:2128,2178
                    expr_1218 := expr_1217
                }
                /// @src 4:2120,2188
                require_helper_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f(expr_1218)
                /// @src 4:2247,2254
                let _272 := 0x01
                let expr_1223 := _272
                /// @src 4:2255,2261
                let _273 := var_module_1203
                let expr_1224 := _273
                /// @src 4:2247,2262
                let _274 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1223,expr_1224)
                let _275 := read_from_storage_split_offset_0_t_address(_274)
                let expr_1225 := _275
                /// @src 4:2274,2275
                let expr_1228 := 0x00
                /// @src 4:2266,2276
                let expr_1229 := convert_t_rational_0_by_1_to_t_address(expr_1228)
                /// @src 4:2247,2276
                let expr_1230 := eq(cleanup_t_address(expr_1225), cleanup_t_address(expr_1229))
                /// @src 4:2239,2286
                require_helper_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12(expr_1230)
                /// @src 4:2314,2321
                let _276 := 0x01
                let expr_1237 := _276
                /// @src 4:2322,2338
                let expr_1238 := constant_SENTINEL_MODULES_1137()
                /// @src 4:2314,2339
                let _277 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1237,expr_1238)
                let _278 := read_from_storage_split_offset_0_t_address(_277)
                let expr_1239 := _278
                /// @src 4:2296,2303
                let _279 := 0x01
                let expr_1234 := _279
                /// @src 4:2304,2310
                let _280 := var_module_1203
                let expr_1235 := _280
                /// @src 4:2296,2311
                let _281 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1234,expr_1235)
                /// @src 4:2296,2339
                update_storage_value_offset_0t_address_to_t_address(_281, expr_1239)
                let expr_1240 := expr_1239
                /// @src 4:2377,2383
                let _282 := var_module_1203
                let expr_1245 := _282
                /// @src 4:2349,2356
                let _283 := 0x01
                let expr_1242 := _283
                /// @src 4:2357,2373
                let expr_1243 := constant_SENTINEL_MODULES_1137()
                /// @src 4:2349,2374
                let _284 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1242,expr_1243)
                /// @src 4:2349,2383
                update_storage_value_offset_0t_address_to_t_address(_284, expr_1245)
                let expr_1246 := expr_1245
                /// @src 4:2412,2418
                let _285 := var_module_1203
                let expr_1249 := _285
                /// @src 4:2398,2419
                let _286 := 0xecdf3a3effea5783a3c4c2140e677577666428d44ed9d474a0b3a4c9943f8440
                {
                    let _287 := allocate_unbounded()
                    let _288 := abi_encode_tuple__to__fromStack(_287 )
                    log2(_287, sub(_288, _287) , _286, expr_1249)
                }
            }

            function fun_encodeTransactionData_870(var_to_809, var_value_811, var_data_813_offset, var_data_813_length, var_operation_816, var_safeTxGas_818, var_baseGas_820, var_gasPrice_822, var_gasToken_824, var_refundReceiver_826, var__nonce_828) -> var__831_mpos {
                /// @src 0:19859,20681
                /// @src 0:20183,20195
                let zero_t_bytes_memory_ptr_212_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__831_mpos := zero_t_bytes_memory_ptr_212_mpos

                /// @src 0:20279,20295
                let expr_838 := constant_SAFE_TX_TYPEHASH_45()
                /// @src 0:20313,20315
                let _214 := var_to_809
                let expr_839 := _214
                /// @src 0:20333,20338
                let _215 := var_value_811
                let expr_840 := _215
                /// @src 0:20366,20370
                let _216_offset := var_data_813_offset
                let _216_length := var_data_813_length
                let expr_842_offset := _216_offset
                let expr_842_length := _216_length
                /// @src 0:20356,20371
                let _217_mpos := convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(expr_842_offset, expr_842_length)
                let expr_843 := keccak256(array_dataslot_t_bytes_memory_ptr(_217_mpos), array_length_t_bytes_memory_ptr(_217_mpos))
                /// @src 0:20389,20398
                let _218 := var_operation_816
                let expr_844 := _218
                /// @src 0:20416,20425
                let _219 := var_safeTxGas_818
                let expr_845 := _219
                /// @src 0:20443,20450
                let _220 := var_baseGas_820
                let expr_846 := _220
                /// @src 0:20468,20476
                let _221 := var_gasPrice_822
                let expr_847 := _221
                /// @src 0:20494,20502
                let _222 := var_gasToken_824
                let expr_848 := _222
                /// @src 0:20520,20534
                let _223 := var_refundReceiver_826
                let expr_849 := _223
                /// @src 0:20552,20558
                let _224 := var__nonce_828
                let expr_850 := _224
                /// @src 0:20251,20572

                let expr_851_mpos := allocate_unbounded()
                let _225 := add(expr_851_mpos, 0x20)

                let _226 := abi_encode_tuple_t_bytes32_t_address_t_uint256_t_bytes32_t_enum$_Operation_$2325_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256__to_t_bytes32_t_address_t_uint256_t_bytes32_t_uint8_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256__fromStack(_225, expr_838, expr_839, expr_840, expr_843, expr_844, expr_845, expr_846, expr_847, expr_848, expr_849, expr_850)
                mstore(expr_851_mpos, sub(_226, add(expr_851_mpos, 0x20)))
                finalize_allocation(expr_851_mpos, sub(_226, expr_851_mpos))
                /// @src 0:20228,20582
                let expr_852 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_851_mpos), array_length_t_bytes_memory_ptr(expr_851_mpos))
                /// @src 0:20207,20582
                let var_safeTxHash_834 := expr_852
                /// @src 0:20623,20627
                let expr_858 := 0x19
                /// @src 0:20616,20628
                let expr_859 := convert_t_rational_25_by_1_to_t_bytes1(expr_858)
                /// @src 0:20637,20641
                let expr_862 := 0x01
                /// @src 0:20630,20642
                let expr_863 := convert_t_rational_1_by_1_to_t_bytes1(expr_862)
                /// @src 0:20644,20659
                let expr_864_functionIdentifier := 806
                /// @src 0:20644,20661
                let expr_865 := fun_domainSeparator_806()
                /// @src 0:20663,20673
                let _227 := var_safeTxHash_834
                let expr_866 := _227
                /// @src 0:20599,20674

                let expr_867_mpos := allocate_unbounded()
                let _228 := add(expr_867_mpos, 0x20)

                let _229 := abi_encode_tuple_packed_t_bytes1_t_bytes1_t_bytes32_t_bytes32__to_t_bytes1_t_bytes1_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_228, expr_859, expr_863, expr_865, expr_866)
                mstore(expr_867_mpos, sub(_229, add(expr_867_mpos, 0x20)))
                finalize_allocation(expr_867_mpos, sub(_229, expr_867_mpos))
                /// @src 0:20592,20674
                var__831_mpos := expr_867_mpos
                leave

            }

            function fun_execTransactionFromModuleReturnData_1396(var_to_1371, var_value_1373, var_data_1375_mpos, var_operation_1378) -> var_success_1381, var_returnData_1383_mpos {
                /// @src 4:4827,5786
                /// @src 4:4998,5010
                let zero_t_bool_325 := zero_value_for_split_t_bool()
                var_success_1381 := zero_t_bool_325
                /// @src 4:5012,5035
                let zero_t_bytes_memory_ptr_326_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_returnData_1383_mpos := zero_t_bytes_memory_ptr_326_mpos

                /// @src 4:5057,5082
                let expr_1386_functionIdentifier := 1368
                /// @src 4:5083,5085
                let _327 := var_to_1371
                let expr_1387 := _327
                /// @src 4:5087,5092
                let _328 := var_value_1373
                let expr_1388 := _328
                /// @src 4:5094,5098
                let _329_mpos := var_data_1375_mpos
                let expr_1389_mpos := _329_mpos
                /// @src 4:5100,5109
                let _330 := var_operation_1378
                let expr_1390 := _330
                /// @src 4:5057,5110
                let expr_1391 := fun_execTransactionFromModule_1368(expr_1387, expr_1388, expr_1389_mpos, expr_1390)
                /// @src 4:5047,5110
                var_success_1381 := expr_1391
                let expr_1392 := expr_1391
                /// @src 4:5176,5780
                {
                    let usr$ptr := mload(0x40)
                    mstore(0x40, add(usr$ptr, add(returndatasize(), 0x20)))
                    mstore(usr$ptr, returndatasize())
                    returndatacopy(add(usr$ptr, 0x20), 0, returndatasize())
                    var_returnData_1383_mpos := usr$ptr
                }

            }

            function fun_execTransactionFromModule_1368(var_to_1311, var_value_1313, var_data_1315_mpos, var_operation_1318) -> var_success_1321 {
                /// @src 4:3621,4336
                /// @src 4:3790,3802
                let zero_t_bool_310 := zero_value_for_split_t_bool()
                var_success_1321 := zero_t_bool_310

                /// @src 4:3992,4002
                let expr_1325 := caller()
                /// @src 4:4006,4022
                let expr_1326 := constant_SENTINEL_MODULES_1137()
                /// @src 4:3992,4022
                let expr_1327 := iszero(eq(cleanup_t_address(expr_1325), cleanup_t_address(expr_1326)))
                /// @src 4:3992,4059
                let expr_1337 := expr_1327
                if expr_1337 {
                    /// @src 4:4026,4033
                    let _311 := 0x01
                    let expr_1328 := _311
                    /// @src 4:4034,4044
                    let expr_1330 := caller()
                    /// @src 4:4026,4045
                    let _312 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1328,expr_1330)
                    let _313 := read_from_storage_split_offset_0_t_address(_312)
                    let expr_1331 := _313
                    /// @src 4:4057,4058
                    let expr_1334 := 0x00
                    /// @src 4:4049,4059
                    let expr_1335 := convert_t_rational_0_by_1_to_t_address(expr_1334)
                    /// @src 4:4026,4059
                    let expr_1336 := iszero(eq(cleanup_t_address(expr_1331), cleanup_t_address(expr_1335)))
                    /// @src 4:3992,4059
                    expr_1337 := expr_1336
                }
                /// @src 4:3984,4069
                require_helper_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23(expr_1337)
                /// @src 4:4151,4158
                let expr_1342_functionIdentifier := 2370
                /// @src 4:4159,4161
                let _314 := var_to_1311
                let expr_1343 := _314
                /// @src 4:4163,4168
                let _315 := var_value_1313
                let expr_1344 := _315
                /// @src 4:4170,4174
                let _316_mpos := var_data_1315_mpos
                let expr_1345_mpos := _316_mpos
                /// @src 4:4176,4185
                let _317 := var_operation_1318
                let expr_1346 := _317
                /// @src 4:4187,4204
                let expr_1351 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 4:4151,4205
                let expr_1352 := fun_execute_2370(expr_1343, expr_1344, expr_1345_mpos, expr_1346, expr_1351)
                /// @src 4:4141,4205
                var_success_1321 := expr_1352
                let expr_1353 := expr_1352
                /// @src 4:4219,4226
                let _318 := var_success_1321
                let expr_1355 := _318
                /// @src 4:4215,4329
                switch expr_1355
                case 0 {
                    /// @src 4:4318,4328
                    let expr_1363 := caller()
                    /// @src 4:4291,4329
                    let _319 := 0xacd2c8702804128fdb0db2bb49f6d127dd0181c13fd45dbfe16de0930e2bd375
                    {
                        let _320 := allocate_unbounded()
                        let _321 := abi_encode_tuple__to__fromStack(_320 )
                        log2(_320, sub(_321, _320) , _319, expr_1363)
                    }/// @src 4:4215,4329
                }
                default {
                    /// @src 4:4260,4270
                    let expr_1358 := caller()
                    /// @src 4:4233,4271
                    let _322 := 0x6895c13664aa4f67288b25d7a21d7aaa34916e355fb9b6fae0a139a9085becb8
                    {
                        let _323 := allocate_unbounded()
                        let _324 := abi_encode_tuple__to__fromStack(_323 )
                        log2(_323, sub(_324, _323) , _322, expr_1358)
                    }/// @src 4:4215,4329
                }

            }

            function fun_execTransaction_376(var_to_170, var_value_172, var_data_174_offset, var_data_174_length, var_operation_177, var_safeTxGas_179, var_baseGas_181, var_gasPrice_183, var_gasToken_185, var_refundReceiver_187, var_signatures_189_mpos) -> var_success_192 {
                /// @src 0:7433,10990
                /// @src 0:7779,7791
                let zero_t_bool_23 := zero_value_for_split_t_bool()
                var_success_192 := zero_t_bool_23

                /// @src 0:7803,7817
                let var_txHash_195
                let zero_t_bytes32_24 := zero_value_for_split_t_bytes32()
                var_txHash_195 := zero_t_bytes32_24
                /// @src 0:7956,7977
                let expr_199_functionIdentifier := 870
                /// @src 0:8031,8033
                let _25 := var_to_170
                let expr_200 := _25
                /// @src 0:8051,8056
                let _26 := var_value_172
                let expr_201 := _26
                /// @src 0:8074,8078
                let _27_offset := var_data_174_offset
                let _27_length := var_data_174_length
                let expr_202_offset := _27_offset
                let expr_202_length := _27_length
                /// @src 0:8096,8105
                let _28 := var_operation_177
                let expr_203 := _28
                /// @src 0:8123,8132
                let _29 := var_safeTxGas_179
                let expr_204 := _29
                /// @src 0:8182,8189
                let _30 := var_baseGas_181
                let expr_205 := _30
                /// @src 0:8207,8215
                let _31 := var_gasPrice_183
                let expr_206 := _31
                /// @src 0:8233,8241
                let _32 := var_gasToken_185
                let expr_207 := _32
                /// @src 0:8259,8273
                let _33 := var_refundReceiver_187
                let expr_208 := _33
                /// @src 0:8325,8330
                let _34 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_209 := _34
                /// @src 0:7956,8344
                let _35 := convert_t_address_payable_to_t_address(expr_208)
                let expr_210_mpos := fun_encodeTransactionData_870(expr_200, expr_201, expr_202_offset, expr_202_length, expr_203, expr_204, expr_205, expr_206, expr_207, _35, expr_209)
                /// @src 0:7930,8344
                let var_txHashData_198_mpos := expr_210_mpos
                /// @src 0:8413,8420
                let _37 := read_from_storage_split_offset_0_t_uint256(0x05)
                let _36 := increment_t_uint256(_37)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _36)
                let expr_213 := _37
                /// @src 0:8453,8463
                let _38_mpos := var_txHashData_198_mpos
                let expr_217_mpos := _38_mpos
                /// @src 0:8443,8464
                let expr_218 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_217_mpos), array_length_t_bytes_memory_ptr(expr_217_mpos))
                /// @src 0:8434,8464
                var_txHash_195 := expr_218
                let expr_219 := expr_218
                /// @src 0:8478,8493
                let expr_221_functionIdentifier := 491
                /// @src 0:8494,8500
                let _39 := var_txHash_195
                let expr_222 := _39
                /// @src 0:8502,8512
                let _40_mpos := var_txHashData_198_mpos
                let expr_223_mpos := _40_mpos
                /// @src 0:8514,8524
                let _41_mpos := var_signatures_189_mpos
                let expr_224_mpos := _41_mpos
                fun_checkSignatures_491(expr_222, expr_223_mpos, expr_224_mpos)
                /// @src 0:8562,8570
                let expr_230_functionIdentifier := 1104
                /// @src 0:8562,8572
                let expr_231 := fun_getGuard_1104()
                /// @src 0:8546,8572
                let var_guard_229 := expr_231
                /// @src 0:8600,8605
                let _42 := var_guard_229
                let expr_233 := _42
                /// @src 0:8617,8618
                let expr_236 := 0x00
                /// @src 0:8609,8619
                let expr_237 := convert_t_rational_0_by_1_to_t_address(expr_236)
                /// @src 0:8600,8619
                let expr_238 := iszero(eq(cleanup_t_address(expr_233), cleanup_t_address(expr_237)))
                /// @src 0:8596,9143
                if expr_238 {
                    /// @src 0:8645,8650
                    let _43 := var_guard_229
                    let expr_240 := _43
                    /// @src 0:8639,8651
                    let expr_241_address := convert_t_address_to_t_contract$_Guard_$1017(expr_240)
                    /// @src 0:8639,8668
                    let expr_242_address := convert_t_contract$_Guard_$1017_to_t_address(expr_241_address)
                    let expr_242_functionSelector := 0x75f0bb52
                    /// @src 0:8730,8732
                    let _44 := var_to_170
                    let expr_243 := _44
                    /// @src 0:8754,8759
                    let _45 := var_value_172
                    let expr_244 := _45
                    /// @src 0:8781,8785
                    let _46_offset := var_data_174_offset
                    let _46_length := var_data_174_length
                    let expr_245_offset := _46_offset
                    let expr_245_length := _46_length
                    /// @src 0:8807,8816
                    let _47 := var_operation_177
                    let expr_246 := _47
                    /// @src 0:8838,8847
                    let _48 := var_safeTxGas_179
                    let expr_247 := _48
                    /// @src 0:8905,8912
                    let _49 := var_baseGas_181
                    let expr_248 := _49
                    /// @src 0:8934,8942
                    let _50 := var_gasPrice_183
                    let expr_249 := _50
                    /// @src 0:8964,8972
                    let _51 := var_gasToken_185
                    let expr_250 := _51
                    /// @src 0:8994,9008
                    let _52 := var_refundReceiver_187
                    let expr_251 := _52
                    /// @src 0:9068,9078
                    let _53_mpos := var_signatures_189_mpos
                    let expr_252_mpos := _53_mpos
                    /// @src 0:9100,9110
                    let expr_254 := caller()
                    /// @src 0:8639,9128
                    if iszero(extcodesize(expr_242_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _54 := allocate_unbounded()
                    mstore(_54, shift_left_224(expr_242_functionSelector))
                    let _55 := abi_encode_tuple_t_address_t_uint256_t_bytes_calldata_ptr_t_enum$_Operation_$2325_t_uint256_t_uint256_t_uint256_t_address_t_address_payable_t_bytes_memory_ptr_t_address__to_t_address_t_uint256_t_bytes_memory_ptr_t_uint8_t_uint256_t_uint256_t_uint256_t_address_t_address_payable_t_bytes_memory_ptr_t_address__fromStack(add(_54, 4) , expr_243, expr_244, expr_245_offset, expr_245_length, expr_246, expr_247, expr_248, expr_249, expr_250, expr_251, expr_252_mpos, expr_254)

                    let _56 := call(gas(), expr_242_address,  0,  _54, sub(_55, _54), _54, 0)

                    if iszero(_56) { revert_forward_1() }

                    if _56 {

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_54, returndatasize())

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_54, add(_54, returndatasize()))
                    }
                    /// @src 0:8596,9143
                }
                /// @src 0:9444,9453
                let expr_262 := gas()
                /// @src 0:9459,9468
                let _57 := var_safeTxGas_179
                let expr_263 := _57
                /// @src 0:9471,9473
                let expr_264 := 0x40
                /// @src 0:9459,9473
                let expr_265 := checked_mul_t_uint256(expr_263, convert_t_rational_64_by_1_to_t_uint256(expr_264))

                /// @src 0:9458,9474
                let expr_266 := expr_265
                /// @src 0:9477,9479
                let expr_267 := 0x3f
                /// @src 0:9458,9479
                let expr_268 := checked_div_t_uint256(expr_266, convert_t_rational_63_by_1_to_t_uint256(expr_267))

                /// @src 0:9457,9480
                let expr_269 := expr_268
                /// @src 0:9457,9484
                let expr_270_self := expr_269
                let expr_270_functionIdentifier := 2273
                /// @src 0:9485,9494
                let _58 := var_safeTxGas_179
                let expr_271 := _58
                /// @src 0:9497,9501
                let expr_272 := 0x09c4
                /// @src 0:9485,9501
                let expr_273 := checked_add_t_uint256(expr_271, convert_t_rational_2500_by_1_to_t_uint256(expr_272))

                /// @src 0:9457,9502
                let expr_274 := fun_max_2273(expr_270_self, expr_273)
                /// @src 0:9505,9508
                let expr_275 := 0x01f4
                /// @src 0:9457,9508
                let expr_276 := checked_add_t_uint256(expr_274, convert_t_rational_500_by_1_to_t_uint256(expr_275))

                /// @src 0:9444,9508
                let expr_277 := iszero(lt(cleanup_t_uint256(expr_262), cleanup_t_uint256(expr_276)))
                /// @src 0:9436,9518
                require_helper_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10(expr_277)
                /// @src 0:9649,9658
                let expr_284 := gas()
                /// @src 0:9631,9658
                let var_gasUsed_282 := expr_284
                /// @src 0:9937,9944
                let expr_287_functionIdentifier := 2370
                /// @src 0:9945,9947
                let _59 := var_to_170
                let expr_288 := _59
                /// @src 0:9949,9954
                let _60 := var_value_172
                let expr_289 := _60
                /// @src 0:9956,9960
                let _61_offset := var_data_174_offset
                let _61_length := var_data_174_length
                let expr_290_offset := _61_offset
                let expr_290_length := _61_length
                /// @src 0:9962,9971
                let _62 := var_operation_177
                let expr_291 := _62
                /// @src 0:9973,9981
                let _63 := var_gasPrice_183
                let expr_292 := _63
                /// @src 0:9985,9986
                let expr_293 := 0x00
                /// @src 0:9973,9986
                let expr_294 := eq(cleanup_t_uint256(expr_292), convert_t_rational_0_by_1_to_t_uint256(expr_293))
                /// @src 0:9973,10019
                let expr_301
                switch expr_294
                case 0 {
                    /// @src 0:10010,10019
                    let _64 := var_safeTxGas_179
                    let expr_300 := _64
                    /// @src 0:9973,10019
                    expr_301 := expr_300
                }
                default {
                    /// @src 0:9990,9999
                    let expr_296 := gas()
                    /// @src 0:10002,10006
                    let expr_297 := 0x09c4
                    /// @src 0:9990,10006
                    let expr_298 := checked_sub_t_uint256(expr_296, convert_t_rational_2500_by_1_to_t_uint256(expr_297))

                    /// @src 0:9989,10007
                    let expr_299 := expr_298
                    /// @src 0:9973,10019
                    expr_301 := expr_299
                }
                /// @src 0:9937,10020
                let _65_mpos := convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(expr_290_offset, expr_290_length)
                let expr_302 := fun_execute_2370(expr_288, expr_289, _65_mpos, expr_291, expr_301)
                /// @src 0:9927,10020
                var_success_192 := expr_302
                let expr_303 := expr_302
                /// @src 0:10044,10051
                let _66 := var_gasUsed_282
                let expr_306 := _66
                /// @src 0:10044,10055
                let expr_307_self := expr_306
                let expr_307_functionIdentifier := 2230
                /// @src 0:10056,10065
                let expr_309 := gas()
                /// @src 0:10044,10066
                let expr_310 := fun_sub_2230(expr_307_self, expr_309)
                /// @src 0:10034,10066
                var_gasUsed_282 := expr_310
                let expr_311 := expr_310
                /// @src 0:10350,10357
                let _67 := var_success_192
                let expr_314 := _67
                /// @src 0:10350,10375
                let expr_318 := expr_314
                if iszero(expr_318) {
                    /// @src 0:10361,10370
                    let _68 := var_safeTxGas_179
                    let expr_315 := _68
                    /// @src 0:10374,10375
                    let expr_316 := 0x00
                    /// @src 0:10361,10375
                    let expr_317 := iszero(eq(cleanup_t_uint256(expr_315), convert_t_rational_0_by_1_to_t_uint256(expr_316)))
                    /// @src 0:10350,10375
                    expr_318 := expr_317
                }
                /// @src 0:10350,10392
                let expr_322 := expr_318
                if iszero(expr_322) {
                    /// @src 0:10379,10387
                    let _69 := var_gasPrice_183
                    let expr_319 := _69
                    /// @src 0:10391,10392
                    let expr_320 := 0x00
                    /// @src 0:10379,10392
                    let expr_321 := iszero(eq(cleanup_t_uint256(expr_319), convert_t_rational_0_by_1_to_t_uint256(expr_320)))
                    /// @src 0:10350,10392
                    expr_322 := expr_321
                }
                /// @src 0:10342,10402
                require_helper_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e(expr_322)
                /// @src 0:10569,10570
                let expr_328 := 0x00
                /// @src 0:10551,10570
                let var_payment_327 := convert_t_rational_0_by_1_to_t_uint256(expr_328)
                /// @src 0:10588,10596
                let _70 := var_gasPrice_183
                let expr_330 := _70
                /// @src 0:10599,10600
                let expr_331 := 0x00
                /// @src 0:10588,10600
                let expr_332 := gt(cleanup_t_uint256(expr_330), convert_t_rational_0_by_1_to_t_uint256(expr_331))
                /// @src 0:10584,10712
                if expr_332 {
                    /// @src 0:10630,10643
                    let expr_334_functionIdentifier := 462
                    /// @src 0:10644,10651
                    let _71 := var_gasUsed_282
                    let expr_335 := _71
                    /// @src 0:10653,10660
                    let _72 := var_baseGas_181
                    let expr_336 := _72
                    /// @src 0:10662,10670
                    let _73 := var_gasPrice_183
                    let expr_337 := _73
                    /// @src 0:10672,10680
                    let _74 := var_gasToken_185
                    let expr_338 := _74
                    /// @src 0:10682,10696
                    let _75 := var_refundReceiver_187
                    let expr_339 := _75
                    /// @src 0:10630,10697
                    let expr_340 := fun_handlePayment_462(expr_335, expr_336, expr_337, expr_338, expr_339)
                    /// @src 0:10620,10697
                    var_payment_327 := expr_340
                    let expr_341 := expr_340
                    /// @src 0:10584,10712
                }
                /// @src 0:10729,10736
                let _76 := var_success_192
                let expr_345 := _76
                /// @src 0:10725,10833
                switch expr_345
                case 0 {
                    /// @src 0:10817,10823
                    let _77 := var_txHash_195
                    let expr_352 := _77
                    /// @src 0:10825,10832
                    let _78 := var_payment_327
                    let expr_353 := _78
                    /// @src 0:10800,10833
                    let _79 := 0x23428b18acfb3ea64b08dc0c1d296ea9c09702c09083ca5272e64d115b687d23
                    {
                        let _80 := allocate_unbounded()
                        let _81 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_80 , expr_353)
                        log2(_80, sub(_81, _80) , _79, expr_352)
                    }/// @src 0:10725,10833
                }
                default {
                    /// @src 0:10760,10766
                    let _82 := var_txHash_195
                    let expr_347 := _82
                    /// @src 0:10768,10775
                    let _83 := var_payment_327
                    let expr_348 := _83
                    /// @src 0:10743,10776
                    let _84 := 0x442e715f626346e8c54381002da614f62bee8d27386535b2521ec8540898556e
                    {
                        let _85 := allocate_unbounded()
                        let _86 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_85 , expr_348)
                        log2(_85, sub(_86, _85) , _84, expr_347)
                    }/// @src 0:10725,10833
                }
                /// @src 0:10871,10876
                let _87 := var_guard_229
                let expr_358 := _87
                /// @src 0:10888,10889
                let expr_361 := 0x00
                /// @src 0:10880,10890
                let expr_362 := convert_t_rational_0_by_1_to_t_address(expr_361)
                /// @src 0:10871,10890
                let expr_363 := iszero(eq(cleanup_t_address(expr_358), cleanup_t_address(expr_362)))
                /// @src 0:10867,10974
                if expr_363 {
                    /// @src 0:10916,10921
                    let _88 := var_guard_229
                    let expr_365 := _88
                    /// @src 0:10910,10922
                    let expr_366_address := convert_t_address_to_t_contract$_Guard_$1017(expr_365)
                    /// @src 0:10910,10942
                    let expr_367_address := convert_t_contract$_Guard_$1017_to_t_address(expr_366_address)
                    let expr_367_functionSelector := 0x93271368
                    /// @src 0:10943,10949
                    let _89 := var_txHash_195
                    let expr_368 := _89
                    /// @src 0:10951,10958
                    let _90 := var_success_192
                    let expr_369 := _90
                    /// @src 0:10910,10959
                    if iszero(extcodesize(expr_367_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _91 := allocate_unbounded()
                    mstore(_91, shift_left_224(expr_367_functionSelector))
                    let _92 := abi_encode_tuple_t_bytes32_t_bool__to_t_bytes32_t_bool__fromStack(add(_91, 4) , expr_368, expr_369)

                    let _93 := call(gas(), expr_367_address,  0,  _91, sub(_92, _91), _91, 0)

                    if iszero(_93) { revert_forward_1() }

                    if _93 {

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_91, returndatasize())

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_91, add(_91, returndatasize()))
                    }
                    /// @src 0:10867,10974
                }

            }

            function fun_execute_2370(var_to_2345, var_value_2347, var_data_2349_mpos, var_operation_2352, var_txGas_2354) -> var_success_2357 {
                /// @src 1:783,1422
                /// @src 1:951,963
                let zero_t_bool_565 := zero_value_for_split_t_bool()
                var_success_2357 := zero_t_bool_565

                /// @src 1:979,988
                let _566 := var_operation_2352
                let expr_2359 := _566
                /// @src 1:992,1019
                let expr_2362 := 1
                /// @src 1:979,1019
                let expr_2363 := eq(cleanup_t_enum$_Operation_$2325(expr_2359), cleanup_t_enum$_Operation_$2325(expr_2362))
                /// @src 1:975,1416
                switch expr_2363
                case 0 {
                    /// @src 1:1296,1406
                    {
                        var_success_2357 := call(var_txGas_2354, var_to_2345, var_value_2347, add(var_data_2349_mpos, 0x20), mload(var_data_2349_mpos), 0, 0)
                    }
                    /// @src 1:975,1416
                }
                default {
                    /// @src 1:1095,1206
                    {
                        var_success_2357 := delegatecall(var_txGas_2354, var_to_2345, add(var_data_2349_mpos, 0x20), mload(var_data_2349_mpos), 0, 0)
                    }
                    /// @src 1:975,1416
                }

            }

            function fun_getChainId_789() -> var__780 {
                /// @src 0:18523,18734
                /// @src 0:18566,18573
                let zero_t_uint256_205 := zero_value_for_split_t_uint256()
                var__780 := zero_t_uint256_205

                /// @src 0:18585,18595
                let var_id_783
                let zero_t_uint256_206 := zero_value_for_split_t_uint256()
                var_id_783 := zero_t_uint256_206
                /// @src 0:18661,18709
                { var_id_783 := chainid() }
                /// @src 0:18725,18727
                let _207 := var_id_783
                let expr_786 := _207
                /// @src 0:18718,18727
                var__780 := expr_786
                leave

            }

            function fun_getGuard_1104() -> var_guard_1096 {
                /// @src 3:2712,2938
                /// @src 3:2755,2768
                let zero_t_address_258 := zero_value_for_split_t_address()
                var_guard_1096 := zero_t_address_258

                /// @src 3:2795,2813
                let expr_1100 := constant_GUARD_STORAGE_SLOT_1053()
                /// @src 3:2780,2813
                let var_slot_1099 := expr_1100
                /// @src 3:2879,2932
                {
                    var_guard_1096 := sload(var_slot_1099)
                }

            }

            function fun_getModulesPaginated_1513(var_start_1421, var_pageSize_1423) -> var_array_1427_mpos, var_next_1429 {
                /// @src 4:6557,8080
                /// @src 4:6642,6664
                let zero_t_array$_t_address_$dyn_memory_ptr_337_mpos := zero_value_for_split_t_array$_t_address_$dyn_memory_ptr()
                var_array_1427_mpos := zero_t_array$_t_address_$dyn_memory_ptr_337_mpos
                /// @src 4:6666,6678
                let zero_t_address_338 := zero_value_for_split_t_address()
                var_next_1429 := zero_t_address_338

                /// @src 4:6698,6703
                let _339 := var_start_1421
                let expr_1432 := _339
                /// @src 4:6707,6723
                let expr_1433 := constant_SENTINEL_MODULES_1137()
                /// @src 4:6698,6723
                let expr_1434 := eq(cleanup_t_address(expr_1432), cleanup_t_address(expr_1433))
                /// @src 4:6698,6749
                let expr_1438 := expr_1434
                if iszero(expr_1438) {
                    /// @src 4:6727,6742
                    let expr_1435_functionIdentifier := 1418
                    /// @src 4:6743,6748
                    let _340 := var_start_1421
                    let expr_1436 := _340
                    /// @src 4:6727,6749
                    let expr_1437 := fun_isModuleEnabled_1418(expr_1436)
                    /// @src 4:6698,6749
                    expr_1438 := expr_1437
                }
                /// @src 4:6690,6759
                require_helper_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c(expr_1438)
                /// @src 4:6777,6785
                let _341 := var_pageSize_1423
                let expr_1443 := _341
                /// @src 4:6788,6789
                let expr_1444 := 0x00
                /// @src 4:6777,6789
                let expr_1445 := gt(cleanup_t_uint256(expr_1443), convert_t_rational_0_by_1_to_t_uint256(expr_1444))
                /// @src 4:6769,6799
                require_helper_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d(expr_1445)
                /// @src 4:6872,6880
                let _342 := var_pageSize_1423
                let expr_1453 := _342
                /// @src 4:6858,6881
                let expr_1454_mpos := allocate_and_zero_memory_array_t_array$_t_address_$dyn_memory_ptr(expr_1453)
                /// @src 4:6850,6881
                var_array_1427_mpos := expr_1454_mpos
                let _343_mpos := var_array_1427_mpos
                let expr_1455_mpos := _343_mpos
                /// @src 4:6947,6948
                let expr_1459 := 0x00
                /// @src 4:6925,6948
                let var_moduleCount_1458 := convert_t_rational_0_by_1_to_t_uint256(expr_1459)
                /// @src 4:6965,6972
                let _344 := 0x01
                let expr_1462 := _344
                /// @src 4:6973,6978
                let _345 := var_start_1421
                let expr_1463 := _345
                /// @src 4:6965,6979
                let _346 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1462,expr_1463)
                let _347 := read_from_storage_split_offset_0_t_address(_346)
                let expr_1464 := _347
                /// @src 4:6958,6979
                var_next_1429 := expr_1464
                let expr_1465 := expr_1464
                /// @src 4:6989,7181
                for {
                    } 1 {
                }
                {
                    /// @src 4:6996,7000
                    let _348 := var_next_1429
                    let expr_1467 := _348
                    /// @src 4:7012,7013
                    let expr_1470 := 0x00
                    /// @src 4:7004,7014
                    let expr_1471 := convert_t_rational_0_by_1_to_t_address(expr_1470)
                    /// @src 4:6996,7014
                    let expr_1472 := iszero(eq(cleanup_t_address(expr_1467), cleanup_t_address(expr_1471)))
                    /// @src 4:6996,7042
                    let expr_1476 := expr_1472
                    if expr_1476 {
                        /// @src 4:7018,7022
                        let _349 := var_next_1429
                        let expr_1473 := _349
                        /// @src 4:7026,7042
                        let expr_1474 := constant_SENTINEL_MODULES_1137()
                        /// @src 4:7018,7042
                        let expr_1475 := iszero(eq(cleanup_t_address(expr_1473), cleanup_t_address(expr_1474)))
                        /// @src 4:6996,7042
                        expr_1476 := expr_1475
                    }
                    /// @src 4:6996,7068
                    let expr_1480 := expr_1476
                    if expr_1480 {
                        /// @src 4:7046,7057
                        let _350 := var_moduleCount_1458
                        let expr_1477 := _350
                        /// @src 4:7060,7068
                        let _351 := var_pageSize_1423
                        let expr_1478 := _351
                        /// @src 4:7046,7068
                        let expr_1479 := lt(cleanup_t_uint256(expr_1477), cleanup_t_uint256(expr_1478))
                        /// @src 4:6996,7068
                        expr_1480 := expr_1479
                    }
                    if iszero(expr_1480) { break }
                    /// @src 4:7105,7109
                    let _352 := var_next_1429
                    let expr_1484 := _352
                    /// @src 4:7084,7089
                    let _353_mpos := var_array_1427_mpos
                    let expr_1481_mpos := _353_mpos
                    /// @src 4:7090,7101
                    let _354 := var_moduleCount_1458
                    let expr_1482 := _354
                    /// @src 4:7084,7109
                    let _355 := expr_1484
                    write_to_memory_t_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_1481_mpos, expr_1482), _355)
                    let expr_1485 := expr_1484
                    /// @src 4:7130,7137
                    let _356 := 0x01
                    let expr_1488 := _356
                    /// @src 4:7138,7142
                    let _357 := var_next_1429
                    let expr_1489 := _357
                    /// @src 4:7130,7143
                    let _358 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1488,expr_1489)
                    let _359 := read_from_storage_split_offset_0_t_address(_358)
                    let expr_1490 := _359
                    /// @src 4:7123,7143
                    var_next_1429 := expr_1490
                    let expr_1491 := expr_1490
                    /// @src 4:7157,7170
                    let _361 := var_moduleCount_1458
                    let _360 := increment_t_uint256(_361)
                    var_moduleCount_1458 := _360
                    let expr_1494 := _361
                }
                /// @src 4:7824,7828
                let _362 := var_next_1429
                let expr_1498 := _362
                /// @src 4:7832,7848
                let expr_1499 := constant_SENTINEL_MODULES_1137()
                /// @src 4:7824,7848
                let expr_1500 := iszero(eq(cleanup_t_address(expr_1498), cleanup_t_address(expr_1499)))
                /// @src 4:7820,7904
                if expr_1500 {
                    /// @src 4:7871,7876
                    let _363_mpos := var_array_1427_mpos
                    let expr_1502_mpos := _363_mpos
                    /// @src 4:7877,7888
                    let _364 := var_moduleCount_1458
                    let expr_1503 := _364
                    /// @src 4:7891,7892
                    let expr_1504 := 0x01
                    /// @src 4:7877,7892
                    let expr_1505 := checked_sub_t_uint256(expr_1503, convert_t_rational_1_by_1_to_t_uint256(expr_1504))

                    /// @src 4:7871,7893
                    let _365 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_1502_mpos, expr_1505))
                    let expr_1506 := _365
                    /// @src 4:7864,7893
                    var_next_1429 := expr_1506
                    let expr_1507 := expr_1506
                    /// @src 4:7820,7904
                }
                /// @src 4:8015,8074
                {
                    mstore(var_array_1427_mpos, var_moduleCount_1458)
                }

            }

            function fun_getOwners_2043() -> var__1997_mpos {
                /// @src 5:6383,6820
                /// @src 5:6425,6441
                let zero_t_array$_t_address_$dyn_memory_ptr_504_mpos := zero_value_for_split_t_array$_t_address_$dyn_memory_ptr()
                var__1997_mpos := zero_t_array$_t_address_$dyn_memory_ptr_504_mpos

                /// @src 5:6492,6502
                let _505 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_2007 := _505
                /// @src 5:6478,6503
                let expr_2008_mpos := allocate_and_zero_memory_array_t_array$_t_address_$dyn_memory_ptr(expr_2007)
                /// @src 5:6453,6503
                let var_array_2003_mpos := expr_2008_mpos
                /// @src 5:6563,6564
                let expr_2012 := 0x00
                /// @src 5:6547,6564
                let var_index_2011 := convert_t_rational_0_by_1_to_t_uint256(expr_2012)
                /// @src 5:6597,6603
                let _506 := 0x02
                let expr_2016 := _506
                /// @src 5:6604,6619
                let expr_2017 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:6597,6620
                let _507 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_2016,expr_2017)
                let _508 := read_from_storage_split_offset_0_t_address(_507)
                let expr_2018 := _508
                /// @src 5:6574,6620
                let var_currentOwner_2015 := expr_2018
                /// @src 5:6630,6792
                for {
                    } 1 {
                }
                {
                    /// @src 5:6637,6649
                    let _509 := var_currentOwner_2015
                    let expr_2020 := _509
                    /// @src 5:6653,6668
                    let expr_2021 := constant_SENTINEL_OWNERS_1555()
                    /// @src 5:6637,6668
                    let expr_2022 := iszero(eq(cleanup_t_address(expr_2020), cleanup_t_address(expr_2021)))
                    if iszero(expr_2022) { break }
                    /// @src 5:6699,6711
                    let _510 := var_currentOwner_2015
                    let expr_2026 := _510
                    /// @src 5:6684,6689
                    let _511_mpos := var_array_2003_mpos
                    let expr_2023_mpos := _511_mpos
                    /// @src 5:6690,6695
                    let _512 := var_index_2011
                    let expr_2024 := _512
                    /// @src 5:6684,6711
                    let _513 := expr_2026
                    write_to_memory_t_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_2023_mpos, expr_2024), _513)
                    let expr_2027 := expr_2026
                    /// @src 5:6740,6746
                    let _514 := 0x02
                    let expr_2030 := _514
                    /// @src 5:6747,6759
                    let _515 := var_currentOwner_2015
                    let expr_2031 := _515
                    /// @src 5:6740,6760
                    let _516 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_2030,expr_2031)
                    let _517 := read_from_storage_split_offset_0_t_address(_516)
                    let expr_2032 := _517
                    /// @src 5:6725,6760
                    var_currentOwner_2015 := expr_2032
                    let expr_2033 := expr_2032
                    /// @src 5:6774,6781
                    let _519 := var_index_2011
                    let _518 := increment_t_uint256(_519)
                    var_index_2011 := _518
                    let expr_2036 := _519
                }
                /// @src 5:6808,6813
                let _520_mpos := var_array_2003_mpos
                let expr_2040_mpos := _520_mpos
                /// @src 5:6801,6813
                var__1997_mpos := expr_2040_mpos
                leave

            }

            function fun_getStorageAt_2157(var_offset_2125, var_length_2127) -> var__2130_mpos {
                /// @src 12:785,1249
                /// @src 12:860,872
                let zero_t_bytes_memory_ptr_533_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__2130_mpos := zero_t_bytes_memory_ptr_533_mpos

                /// @src 12:916,922
                let _534 := var_length_2127
                let expr_2136 := _534
                /// @src 12:925,927
                let expr_2137 := 0x20
                /// @src 12:916,927
                let expr_2138 := checked_mul_t_uint256(expr_2136, convert_t_rational_32_by_1_to_t_uint256(expr_2137))

                /// @src 12:906,928
                let expr_2139_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_2138)
                /// @src 12:884,928
                let var_result_2133_mpos := expr_2139_mpos
                /// @src 12:938,1220
                for {
                    /// @src 12:959,960
                    let expr_2143 := 0x00
                    /// @src 12:943,960
                    let var_index_2142 := convert_t_rational_0_by_1_to_t_uint256(expr_2143)
                    } 1 {
                    /// @src 12:978,985
                    let _536 := var_index_2142
                    let _535 := increment_t_uint256(_536)
                    var_index_2142 := _535
                    let expr_2149 := _536
                }
                {
                    /// @src 12:962,967
                    let _537 := var_index_2142
                    let expr_2145 := _537
                    /// @src 12:970,976
                    let _538 := var_length_2127
                    let expr_2146 := _538
                    /// @src 12:962,976
                    let expr_2147 := lt(cleanup_t_uint256(expr_2145), cleanup_t_uint256(expr_2146))
                    if iszero(expr_2147) { break }
                    /// @src 12:1061,1210
                    {
                        let usr$word := sload(add(var_offset_2125, var_index_2142))
                        mstore(add(add(var_result_2133_mpos, 0x20), mul(var_index_2142, 0x20)), usr$word)
                    }
                }
                /// @src 12:1236,1242
                let _539_mpos := var_result_2133_mpos
                let expr_2154_mpos := _539_mpos
                /// @src 12:1229,1242
                var__2130_mpos := expr_2154_mpos
                leave

            }

            function fun_getThreshold_1970() -> var__1965 {
                /// @src 5:5915,6002
                /// @src 5:5960,5967
                let zero_t_uint256_496 := zero_value_for_split_t_uint256()
                var__1965 := zero_t_uint256_496

                /// @src 5:5986,5995
                let _497 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_1967 := _497
                /// @src 5:5979,5995
                var__1965 := expr_1967
                leave

            }

            function fun_getTransactionHash_913(var_to_873, var_value_875, var_data_877_offset, var_data_877_length, var_operation_880, var_safeTxGas_882, var_baseGas_884, var_gasPrice_886, var_gasToken_888, var_refundReceiver_890, var__nonce_892) -> var__895 {
                /// @src 0:21386,21864
                /// @src 0:21707,21714
                let zero_t_bytes32_230 := zero_value_for_split_t_bytes32()
                var__895 := zero_t_bytes32_230

                /// @src 0:21743,21764
                let expr_898_functionIdentifier := 870
                /// @src 0:21765,21767
                let _231 := var_to_873
                let expr_899 := _231
                /// @src 0:21769,21774
                let _232 := var_value_875
                let expr_900 := _232
                /// @src 0:21776,21780
                let _233_offset := var_data_877_offset
                let _233_length := var_data_877_length
                let expr_901_offset := _233_offset
                let expr_901_length := _233_length
                /// @src 0:21782,21791
                let _234 := var_operation_880
                let expr_902 := _234
                /// @src 0:21793,21802
                let _235 := var_safeTxGas_882
                let expr_903 := _235
                /// @src 0:21804,21811
                let _236 := var_baseGas_884
                let expr_904 := _236
                /// @src 0:21813,21821
                let _237 := var_gasPrice_886
                let expr_905 := _237
                /// @src 0:21823,21831
                let _238 := var_gasToken_888
                let expr_906 := _238
                /// @src 0:21833,21847
                let _239 := var_refundReceiver_890
                let expr_907 := _239
                /// @src 0:21849,21855
                let _240 := var__nonce_892
                let expr_908 := _240
                /// @src 0:21743,21856
                let expr_909_mpos := fun_encodeTransactionData_870(expr_899, expr_900, expr_901_offset, expr_901_length, expr_902, expr_903, expr_904, expr_905, expr_906, expr_907, expr_908)
                /// @src 0:21733,21857
                let expr_910 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_909_mpos), array_length_t_bytes_memory_ptr(expr_909_mpos))
                /// @src 0:21726,21857
                var__895 := expr_910
                leave

            }

            function fun_handlePayment_462(var_gasUsed_379, var_baseGas_381, var_gasPrice_383, var_gasToken_385, var_refundReceiver_387) -> var_payment_390 {
                /// @src 0:11515,12336
                /// @src 0:11703,11718
                let zero_t_uint256_94 := zero_value_for_split_t_uint256()
                var_payment_390 := zero_t_uint256_94

                /// @src 0:11810,11824
                let _95 := var_refundReceiver_387
                let expr_394 := _95
                /// @src 0:11836,11837
                let expr_397 := 0x00
                /// @src 0:11828,11838
                let expr_398 := convert_t_rational_0_by_1_to_t_address(expr_397)
                /// @src 0:11810,11838
                let expr_399 := eq(convert_t_address_payable_to_t_address(expr_394), cleanup_t_address(expr_398))
                /// @src 0:11810,11876
                let expr_406
                switch expr_399
                case 0 {
                    /// @src 0:11862,11876
                    let _96 := var_refundReceiver_387
                    let expr_405 := _96
                    /// @src 0:11810,11876
                    expr_406 := expr_405
                }
                default {
                    /// @src 0:11849,11858
                    let expr_403 := origin()
                    /// @src 0:11841,11859
                    let expr_404 := convert_t_address_to_t_address_payable(expr_403)
                    /// @src 0:11810,11876
                    expr_406 := expr_404
                }
                /// @src 0:11783,11876
                let var_receiver_393 := expr_406
                /// @src 0:11890,11898
                let _97 := var_gasToken_385
                let expr_408 := _97
                /// @src 0:11910,11911
                let expr_411 := 0x00
                /// @src 0:11902,11912
                let expr_412 := convert_t_rational_0_by_1_to_t_address(expr_411)
                /// @src 0:11890,11912
                let expr_413 := eq(cleanup_t_address(expr_408), cleanup_t_address(expr_412))
                /// @src 0:11886,12330
                switch expr_413
                case 0 {
                    /// @src 0:12211,12218
                    let _98 := var_gasUsed_379
                    let expr_441 := _98
                    /// @src 0:12211,12222
                    let expr_442_self := expr_441
                    let expr_442_functionIdentifier := 2255
                    /// @src 0:12223,12230
                    let _99 := var_baseGas_381
                    let expr_443 := _99
                    /// @src 0:12211,12231
                    let expr_444 := fun_add_2255(expr_442_self, expr_443)
                    /// @src 0:12211,12235
                    let expr_445_self := expr_444
                    let expr_445_functionIdentifier := 2205
                    /// @src 0:12236,12244
                    let _100 := var_gasPrice_383
                    let expr_446 := _100
                    /// @src 0:12211,12245
                    let expr_447 := fun_mul_2205(expr_445_self, expr_446)
                    /// @src 0:12201,12245
                    var_payment_390 := expr_447
                    let expr_448 := expr_447
                    /// @src 0:12267,12280
                    let expr_451_functionIdentifier := 2092
                    /// @src 0:12281,12289
                    let _101 := var_gasToken_385
                    let expr_452 := _101
                    /// @src 0:12291,12299
                    let _102 := var_receiver_393
                    let expr_453 := _102
                    /// @src 0:12301,12308
                    let _103 := var_payment_390
                    let expr_454 := _103
                    /// @src 0:12267,12309
                    let _104 := convert_t_address_payable_to_t_address(expr_453)
                    let expr_455 := fun_transferToken_2092(expr_452, _104, expr_454)
                    /// @src 0:12259,12319
                    require_helper_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07(expr_455)
                    /// @src 0:11886,12330
                }
                default {
                    /// @src 0:12043,12050
                    let _105 := var_gasUsed_379
                    let expr_415 := _105
                    /// @src 0:12043,12054
                    let expr_416_self := expr_415
                    let expr_416_functionIdentifier := 2255
                    /// @src 0:12055,12062
                    let _106 := var_baseGas_381
                    let expr_417 := _106
                    /// @src 0:12043,12063
                    let expr_418 := fun_add_2255(expr_416_self, expr_417)
                    /// @src 0:12043,12067
                    let expr_419_self := expr_418
                    let expr_419_functionIdentifier := 2205
                    /// @src 0:12068,12076
                    let _107 := var_gasPrice_383
                    let expr_420 := _107
                    /// @src 0:12079,12090
                    let expr_422 := gasprice()
                    /// @src 0:12068,12090
                    let expr_423 := lt(cleanup_t_uint256(expr_420), cleanup_t_uint256(expr_422))
                    /// @src 0:12068,12115
                    let expr_427
                    switch expr_423
                    case 0 {
                        /// @src 0:12104,12115
                        let expr_426 := gasprice()
                        /// @src 0:12068,12115
                        expr_427 := expr_426
                    }
                    default {
                        /// @src 0:12093,12101
                        let _108 := var_gasPrice_383
                        let expr_424 := _108
                        /// @src 0:12068,12115
                        expr_427 := expr_424
                    }
                    /// @src 0:12043,12116
                    let expr_428 := fun_mul_2205(expr_419_self, expr_427)
                    /// @src 0:12033,12116
                    var_payment_390 := expr_428
                    let expr_429 := expr_428
                    /// @src 0:12138,12146
                    let _109 := var_receiver_393
                    let expr_432 := _109
                    /// @src 0:12138,12151
                    let expr_433_address := convert_t_address_payable_to_t_address(expr_432)
                    /// @src 0:12152,12159
                    let _110 := var_payment_390
                    let expr_434 := _110
                    /// @src 0:12138,12160

                    let _111 := 0
                    if iszero(expr_434) { _111 := 2300 }
                    let expr_435 := call(_111, expr_433_address, expr_434, 0, 0, 0, 0)

                    /// @src 0:12130,12170
                    require_helper_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0(expr_435)
                    /// @src 0:11886,12330
                }

            }

            function fun_internalSetFallbackHandler_949(var_handler_930) {
                /// @src 2:689,2112

                /// @src 2:1897,1904
                let _241 := var_handler_930
                let expr_934 := _241
                /// @src 2:1916,1920
                let expr_937_address := address()
                /// @src 2:1908,1921
                let expr_938 := convert_t_contract$_FallbackManager_$976_to_t_address(expr_937_address)
                /// @src 2:1897,1921
                let expr_939 := iszero(eq(cleanup_t_address(expr_934), cleanup_t_address(expr_938)))
                /// @src 2:1889,1931
                require_helper_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2(expr_939)
                /// @src 2:1957,1986
                let expr_945 := constant_FALLBACK_HANDLER_STORAGE_SLOT_927()
                /// @src 2:1942,1986
                let var_slot_944 := expr_945
                /// @src 2:2052,2106
                {
                    sstore(var_slot_944, var_handler_930)
                }

            }

            function fun_isContract_1530(var_account_1516) -> var__1519 {
                /// @src 4:8385,8631
                /// @src 4:8445,8449
                let zero_t_bool_366 := zero_value_for_split_t_bool()
                var__1519 := zero_t_bool_366

                /// @src 4:8461,8473
                let var_size_1522
                let zero_t_uint256_367 := zero_value_for_split_t_uint256()
                var_size_1522 := zero_t_uint256_367
                /// @src 4:8539,8600
                {
                    var_size_1522 := extcodesize(var_account_1516)
                }
                /// @src 4:8616,8620
                let _368 := var_size_1522
                let expr_1525 := _368
                /// @src 4:8623,8624
                let expr_1526 := 0x00
                /// @src 4:8616,8624
                let expr_1527 := gt(cleanup_t_uint256(expr_1525), convert_t_rational_0_by_1_to_t_uint256(expr_1526))
                /// @src 4:8609,8624
                var__1519 := expr_1527
                leave

            }

            function fun_isModuleEnabled_1418(var_module_1399) -> var__1402 {
                /// @src 4:5900,6051
                /// @src 4:5962,5966
                let zero_t_bool_331 := zero_value_for_split_t_bool()
                var__1402 := zero_t_bool_331

                /// @src 4:5985,6001
                let expr_1404 := constant_SENTINEL_MODULES_1137()
                /// @src 4:6005,6011
                let _332 := var_module_1399
                let expr_1405 := _332
                /// @src 4:5985,6011
                let expr_1406 := iszero(eq(cleanup_t_address(expr_1404), cleanup_t_address(expr_1405)))
                /// @src 4:5985,6044
                let expr_1415 := expr_1406
                if expr_1415 {
                    /// @src 4:6015,6022
                    let _333 := 0x01
                    let expr_1407 := _333
                    /// @src 4:6023,6029
                    let _334 := var_module_1399
                    let expr_1408 := _334
                    /// @src 4:6015,6030
                    let _335 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1407,expr_1408)
                    let _336 := read_from_storage_split_offset_0_t_address(_335)
                    let expr_1409 := _336
                    /// @src 4:6042,6043
                    let expr_1412 := 0x00
                    /// @src 4:6034,6044
                    let expr_1413 := convert_t_rational_0_by_1_to_t_address(expr_1412)
                    /// @src 4:6015,6044
                    let expr_1414 := iszero(eq(cleanup_t_address(expr_1409), cleanup_t_address(expr_1413)))
                    /// @src 4:5985,6044
                    expr_1415 := expr_1414
                }
                /// @src 4:5978,6044
                var__1402 := expr_1415
                leave

            }

            function fun_isOwner_1992(var_owner_1973) -> var__1976 {
                /// @src 5:6140,6278
                /// @src 5:6193,6197
                let zero_t_bool_498 := zero_value_for_split_t_bool()
                var__1976 := zero_t_bool_498

                /// @src 5:6216,6221
                let _499 := var_owner_1973
                let expr_1978 := _499
                /// @src 5:6225,6240
                let expr_1979 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:6216,6240
                let expr_1980 := iszero(eq(cleanup_t_address(expr_1978), cleanup_t_address(expr_1979)))
                /// @src 5:6216,6271
                let expr_1989 := expr_1980
                if expr_1989 {
                    /// @src 5:6244,6250
                    let _500 := 0x02
                    let expr_1981 := _500
                    /// @src 5:6251,6256
                    let _501 := var_owner_1973
                    let expr_1982 := _501
                    /// @src 5:6244,6257
                    let _502 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1981,expr_1982)
                    let _503 := read_from_storage_split_offset_0_t_address(_502)
                    let expr_1983 := _503
                    /// @src 5:6269,6270
                    let expr_1986 := 0x00
                    /// @src 5:6261,6271
                    let expr_1987 := convert_t_rational_0_by_1_to_t_address(expr_1986)
                    /// @src 5:6244,6271
                    let expr_1988 := iszero(eq(cleanup_t_address(expr_1983), cleanup_t_address(expr_1987)))
                    /// @src 5:6216,6271
                    expr_1989 := expr_1988
                }
                /// @src 5:6209,6271
                var__1976 := expr_1989
                leave

            }

            function fun_max_2273(var_a_2258, var_b_2260) -> var__2263 {
                /// @src 13:1646,1751
                /// @src 13:1704,1711
                let zero_t_uint256_560 := zero_value_for_split_t_uint256()
                var__2263 := zero_t_uint256_560

                /// @src 13:1730,1731
                let _561 := var_a_2258
                let expr_2265 := _561
                /// @src 13:1735,1736
                let _562 := var_b_2260
                let expr_2266 := _562
                /// @src 13:1730,1736
                let expr_2267 := iszero(lt(cleanup_t_uint256(expr_2265), cleanup_t_uint256(expr_2266)))
                /// @src 13:1730,1744
                let expr_2270
                switch expr_2267
                case 0 {
                    /// @src 13:1743,1744
                    let _563 := var_b_2260
                    let expr_2269 := _563
                    /// @src 13:1730,1744
                    expr_2270 := expr_2269
                }
                default {
                    /// @src 13:1739,1740
                    let _564 := var_a_2258
                    let expr_2268 := _564
                    /// @src 13:1730,1744
                    expr_2270 := expr_2268
                }
                /// @src 13:1723,1744
                var__2263 := expr_2270
                leave

            }

            function fun_mul_2205(var_a_2174, var_b_2176) -> var__2179 {
                /// @src 13:382,803
                /// @src 13:440,447
                let zero_t_uint256_540 := zero_value_for_split_t_uint256()
                var__2179 := zero_t_uint256_540

                /// @src 13:680,681
                let _541 := var_a_2174
                let expr_2181 := _541
                /// @src 13:685,686
                let expr_2182 := 0x00
                /// @src 13:680,686
                let expr_2183 := eq(cleanup_t_uint256(expr_2181), convert_t_rational_0_by_1_to_t_uint256(expr_2182))
                /// @src 13:676,721
                if expr_2183 {
                    /// @src 13:709,710
                    let expr_2184 := 0x00
                    /// @src 13:702,710
                    var__2179 := convert_t_rational_0_by_1_to_t_uint256(expr_2184)
                    leave
                    /// @src 13:676,721
                }
                /// @src 13:743,744
                let _542 := var_a_2174
                let expr_2190 := _542
                /// @src 13:747,748
                let _543 := var_b_2176
                let expr_2191 := _543
                /// @src 13:743,748
                let expr_2192 := checked_mul_t_uint256(expr_2190, expr_2191)

                /// @src 13:731,748
                let var_c_2189 := expr_2192
                /// @src 13:766,767
                let _544 := var_c_2189
                let expr_2195 := _544
                /// @src 13:770,771
                let _545 := var_a_2174
                let expr_2196 := _545
                /// @src 13:766,771
                let expr_2197 := checked_div_t_uint256(expr_2195, expr_2196)

                /// @src 13:775,776
                let _546 := var_b_2176
                let expr_2198 := _546
                /// @src 13:766,776
                let expr_2199 := eq(cleanup_t_uint256(expr_2197), cleanup_t_uint256(expr_2198))
                /// @src 13:758,777
                require_helper(expr_2199)
                /// @src 13:795,796
                let _547 := var_c_2189
                let expr_2202 := _547
                /// @src 13:788,796
                var__2179 := expr_2202
                leave

            }

            function fun_removeOwner_1830(var_prevOwner_1756, var_owner_1758, var__threshold_1760) {
                /// @src 5:3380,4077

                modifier_authorized_1763(var_prevOwner_1756, var_owner_1758, var__threshold_1760)
            }

            function fun_removeOwner_1830_inner(var_prevOwner_1756, var_owner_1758, var__threshold_1760) {
                /// @src 5:3380,4077

                /// @src 5:3568,3578
                let _424 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_1766 := _424
                /// @src 5:3581,3582
                let expr_1767 := 0x01
                /// @src 5:3568,3582
                let expr_1768 := checked_sub_t_uint256(expr_1766, convert_t_rational_1_by_1_to_t_uint256(expr_1767))

                /// @src 5:3586,3596
                let _425 := var__threshold_1760
                let expr_1769 := _425
                /// @src 5:3568,3596
                let expr_1770 := iszero(lt(cleanup_t_uint256(expr_1768), cleanup_t_uint256(expr_1769)))
                /// @src 5:3560,3606
                require_helper_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(expr_1770)
                /// @src 5:3704,3709
                let _426 := var_owner_1758
                let expr_1775 := _426
                /// @src 5:3721,3722
                let expr_1778 := 0x00
                /// @src 5:3713,3723
                let expr_1779 := convert_t_rational_0_by_1_to_t_address(expr_1778)
                /// @src 5:3704,3723
                let expr_1780 := iszero(eq(cleanup_t_address(expr_1775), cleanup_t_address(expr_1779)))
                /// @src 5:3704,3751
                let expr_1784 := expr_1780
                if expr_1784 {
                    /// @src 5:3727,3732
                    let _427 := var_owner_1758
                    let expr_1781 := _427
                    /// @src 5:3736,3751
                    let expr_1782 := constant_SENTINEL_OWNERS_1555()
                    /// @src 5:3727,3751
                    let expr_1783 := iszero(eq(cleanup_t_address(expr_1781), cleanup_t_address(expr_1782)))
                    /// @src 5:3704,3751
                    expr_1784 := expr_1783
                }
                /// @src 5:3696,3761
                require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(expr_1784)
                /// @src 5:3779,3785
                let _428 := 0x02
                let expr_1789 := _428
                /// @src 5:3786,3795
                let _429 := var_prevOwner_1756
                let expr_1790 := _429
                /// @src 5:3779,3796
                let _430 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1789,expr_1790)
                let _431 := read_from_storage_split_offset_0_t_address(_430)
                let expr_1791 := _431
                /// @src 5:3800,3805
                let _432 := var_owner_1758
                let expr_1792 := _432
                /// @src 5:3779,3805
                let expr_1793 := eq(cleanup_t_address(expr_1791), cleanup_t_address(expr_1792))
                /// @src 5:3771,3815
                require_helper_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39(expr_1793)
                /// @src 5:3845,3851
                let _433 := 0x02
                let expr_1800 := _433
                /// @src 5:3852,3857
                let _434 := var_owner_1758
                let expr_1801 := _434
                /// @src 5:3845,3858
                let _435 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1800,expr_1801)
                let _436 := read_from_storage_split_offset_0_t_address(_435)
                let expr_1802 := _436
                /// @src 5:3825,3831
                let _437 := 0x02
                let expr_1797 := _437
                /// @src 5:3832,3841
                let _438 := var_prevOwner_1756
                let expr_1798 := _438
                /// @src 5:3825,3842
                let _439 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1797,expr_1798)
                /// @src 5:3825,3858
                update_storage_value_offset_0t_address_to_t_address(_439, expr_1802)
                let expr_1803 := expr_1802
                /// @src 5:3892,3893
                let expr_1810 := 0x00
                /// @src 5:3884,3894
                let expr_1811 := convert_t_rational_0_by_1_to_t_address(expr_1810)
                /// @src 5:3868,3874
                let _440 := 0x02
                let expr_1805 := _440
                /// @src 5:3875,3880
                let _441 := var_owner_1758
                let expr_1806 := _441
                /// @src 5:3868,3881
                let _442 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1805,expr_1806)
                /// @src 5:3868,3894
                update_storage_value_offset_0t_address_to_t_address(_442, expr_1811)
                let expr_1812 := expr_1811
                /// @src 5:3904,3916
                let _444 := read_from_storage_split_offset_0_t_uint256(0x03)
                let _443 := decrement_t_uint256(_444)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, _443)
                let expr_1815 := _444
                /// @src 5:3944,3949
                let _445 := var_owner_1758
                let expr_1818 := _445
                /// @src 5:3931,3950
                let _446 := 0xf8d49fc529812e9a7c5c50e69c20f0dccc0db8fa95c98bc58cc9a4f1c1299eaf
                {
                    let _447 := allocate_unbounded()
                    let _448 := abi_encode_tuple__to__fromStack(_447 )
                    log2(_447, sub(_448, _447) , _446, expr_1818)
                }/// @src 5:4018,4027
                let _449 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_1821 := _449
                /// @src 5:4031,4041
                let _450 := var__threshold_1760
                let expr_1822 := _450
                /// @src 5:4018,4041
                let expr_1823 := iszero(eq(cleanup_t_uint256(expr_1821), cleanup_t_uint256(expr_1822)))
                /// @src 5:4014,4070
                if expr_1823 {
                    /// @src 5:4043,4058
                    let expr_1824_functionIdentifier := 1961
                    /// @src 5:4059,4069
                    let _451 := var__threshold_1760
                    let expr_1825 := _451
                    fun_changeThreshold_1961(expr_1825)
                    /// @src 5:4014,4070
                }

            }

            function fun_requireSelfCall_2311() {
                /// @src 9:248,350

                /// @src 9:306,316
                let expr_2301 := caller()
                /// @src 9:328,332
                let expr_2304_address := address()
                /// @src 9:320,333
                let expr_2305 := convert_t_contract$_SelfAuthorized_$2319_to_t_address(expr_2304_address)
                /// @src 9:306,333
                let expr_2306 := eq(cleanup_t_address(expr_2301), cleanup_t_address(expr_2305))
                /// @src 9:298,343
                require_helper_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17(expr_2306)

            }

            function fun_setFallbackHandler_966(var_handler_952) {
                /// @src 2:2437,2598

                modifier_authorized_955(var_handler_952)
            }

            function fun_setFallbackHandler_966_inner(var_handler_952) {
                /// @src 2:2437,2598

                /// @src 2:2510,2536
                let expr_957_functionIdentifier := 949
                /// @src 2:2537,2544
                let _243 := var_handler_952
                let expr_958 := _243
                fun_internalSetFallbackHandler_949(expr_958)
                /// @src 2:2583,2590
                let _244 := var_handler_952
                let expr_962 := _244
                /// @src 2:2560,2591
                let _245 := 0x5ac6c46c93c8d0e53714ba3b53db3e7c046da994313d7ed0d192028bc7c228b0
                {
                    let _246 := allocate_unbounded()
                    let _247 := abi_encode_tuple__to__fromStack(_246 )
                    log2(_246, sub(_247, _246) , _245, expr_962)
                }
            }

            function fun_setGuard_1092(var_guard_1056) {
                /// @src 3:1962,2348

                modifier_authorized_1059(var_guard_1056)
            }

            function fun_setGuard_1092_inner(var_guard_1056) {
                /// @src 3:1962,2348

                /// @src 3:2029,2034
                let _248 := var_guard_1056
                let expr_1061 := _248
                /// @src 3:2046,2047
                let expr_1064 := 0x00
                /// @src 3:2038,2048
                let expr_1065 := convert_t_rational_0_by_1_to_t_address(expr_1064)
                /// @src 3:2029,2048
                let expr_1066 := iszero(eq(cleanup_t_address(expr_1061), cleanup_t_address(expr_1065)))
                /// @src 3:2025,2148
                if expr_1066 {
                    /// @src 3:2078,2083
                    let _249 := var_guard_1056
                    let expr_1069 := _249
                    /// @src 3:2072,2084
                    let expr_1070_address := convert_t_address_to_t_contract$_Guard_$1017(expr_1069)
                    /// @src 3:2072,2102
                    let expr_1071_address := convert_t_contract$_Guard_$1017_to_t_address(expr_1070_address)
                    let expr_1071_functionSelector := 0x01ffc9a7
                    /// @src 3:2103,2126
                    let expr_1075 := 0xe6d7a83a00000000000000000000000000000000000000000000000000000000
                    /// @src 3:2072,2127
                    if iszero(extcodesize(expr_1071_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _250 := allocate_unbounded()
                    mstore(_250, shift_left_224(expr_1071_functionSelector))
                    let _251 := abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(add(_250, 4) , expr_1075)

                    let _252 := staticcall(gas(), expr_1071_address,  _250, sub(_251, _250), _250, 32)

                    if iszero(_252) { revert_forward_1() }

                    let expr_1076
                    if _252 {

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_250, returndatasize())

                        // decode return parameters from external try-call into retVars
                        expr_1076 :=  abi_decode_tuple_t_bool_fromMemory(_250, add(_250, returndatasize()))
                    }
                    /// @src 3:2064,2137
                    require_helper_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0(expr_1076)
                    /// @src 3:2025,2148
                }
                /// @src 3:2172,2190
                let expr_1084 := constant_GUARD_STORAGE_SLOT_1053()
                /// @src 3:2157,2190
                let var_slot_1083 := expr_1084
                /// @src 3:2256,2308
                {
                    sstore(var_slot_1083, var_guard_1056)
                }
                /// @src 3:2335,2340
                let _254 := var_guard_1056
                let expr_1088 := _254
                /// @src 3:2322,2341
                let _255 := 0x1151116914515bc0891ff9047a6cb32cf902546f83066499bcf8ba33d2353fa2
                {
                    let _256 := allocate_unbounded()
                    let _257 := abi_encode_tuple__to__fromStack(_256 )
                    log2(_256, sub(_257, _256) , _255, expr_1088)
                }
            }

            function fun_setupModules_1200(var_to_1144, var_data_1146_mpos) {
                /// @src 4:1366,1816

                /// @src 4:1446,1453
                let _259 := 0x01
                let expr_1150 := _259
                /// @src 4:1454,1470
                let expr_1151 := constant_SENTINEL_MODULES_1137()
                /// @src 4:1446,1471
                let _261 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1150,expr_1151)
                let _262 := read_from_storage_split_offset_0_t_address(_261)
                let expr_1152 := _262
                /// @src 4:1483,1484
                let expr_1155 := 0x00
                /// @src 4:1475,1485
                let expr_1156 := convert_t_rational_0_by_1_to_t_address(expr_1155)
                /// @src 4:1446,1485
                let expr_1157 := eq(cleanup_t_address(expr_1152), cleanup_t_address(expr_1156))
                /// @src 4:1438,1495
                require_helper_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426(expr_1157)
                /// @src 4:1533,1549
                let expr_1164 := constant_SENTINEL_MODULES_1137()
                /// @src 4:1505,1512
                let _263 := 0x01
                let expr_1161 := _263
                /// @src 4:1513,1529
                let expr_1162 := constant_SENTINEL_MODULES_1137()
                /// @src 4:1505,1530
                let _264 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1161,expr_1162)
                /// @src 4:1505,1549
                update_storage_value_offset_0t_address_to_t_address(_264, expr_1164)
                let expr_1165 := expr_1164
                /// @src 4:1563,1565
                let _265 := var_to_1144
                let expr_1167 := _265
                /// @src 4:1577,1578
                let expr_1170 := 0x00
                /// @src 4:1569,1579
                let expr_1171 := convert_t_rational_0_by_1_to_t_address(expr_1170)
                /// @src 4:1563,1579
                let expr_1172 := iszero(eq(cleanup_t_address(expr_1167), cleanup_t_address(expr_1171)))
                /// @src 4:1559,1810
                if expr_1172 {
                    /// @src 4:1603,1613
                    let expr_1174_functionIdentifier := 1530
                    /// @src 4:1614,1616
                    let _266 := var_to_1144
                    let expr_1175 := _266
                    /// @src 4:1603,1617
                    let expr_1176 := fun_isContract_1530(expr_1175)
                    /// @src 4:1595,1627
                    require_helper_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0(expr_1176)
                    /// @src 4:1721,1728
                    let expr_1181_functionIdentifier := 2370
                    /// @src 4:1729,1731
                    let _267 := var_to_1144
                    let expr_1182 := _267
                    /// @src 4:1733,1734
                    let expr_1183 := 0x00
                    /// @src 4:1736,1740
                    let _268_mpos := var_data_1146_mpos
                    let expr_1184_mpos := _268_mpos
                    /// @src 4:1742,1769
                    let expr_1187 := 1
                    /// @src 4:1771,1788
                    let expr_1192 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 4:1721,1789
                    let _269 := convert_t_rational_0_by_1_to_t_uint256(expr_1183)
                    let expr_1193 := fun_execute_2370(expr_1182, _269, expr_1184_mpos, expr_1187, expr_1192)
                    /// @src 4:1713,1799
                    require_helper_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced(expr_1193)
                    /// @src 4:1559,1810
                }

            }

            function fun_setupOwners_1680(var__owners_1567_mpos, var__threshold_1569) {
                /// @src 5:1011,2147

                /// @src 5:1229,1238
                let _369 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_1573 := _369
                /// @src 5:1242,1243
                let expr_1574 := 0x00
                /// @src 5:1229,1243
                let expr_1575 := eq(cleanup_t_uint256(expr_1573), convert_t_rational_0_by_1_to_t_uint256(expr_1574))
                /// @src 5:1221,1253
                require_helper_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b(expr_1575)
                /// @src 5:1346,1356
                let _370 := var__threshold_1569
                let expr_1580 := _370
                /// @src 5:1360,1367
                let _371_mpos := var__owners_1567_mpos
                let expr_1581_mpos := _371_mpos
                /// @src 5:1360,1374
                let expr_1582 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_1581_mpos)
                /// @src 5:1346,1374
                let expr_1583 := iszero(gt(cleanup_t_uint256(expr_1580), cleanup_t_uint256(expr_1582)))
                /// @src 5:1338,1384
                require_helper_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(expr_1583)
                /// @src 5:1454,1464
                let _372 := var__threshold_1569
                let expr_1588 := _372
                /// @src 5:1468,1469
                let expr_1589 := 0x01
                /// @src 5:1454,1469
                let expr_1590 := iszero(lt(cleanup_t_uint256(expr_1588), convert_t_rational_1_by_1_to_t_uint256(expr_1589)))
                /// @src 5:1446,1479
                require_helper_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b(expr_1590)
                /// @src 5:1549,1564
                let expr_1596 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:1526,1564
                let var_currentOwner_1595 := expr_1596
                /// @src 5:1574,2024
                for {
                    /// @src 5:1591,1592
                    let expr_1600 := 0x00
                    /// @src 5:1579,1592
                    let var_i_1599 := convert_t_rational_0_by_1_to_t_uint256(expr_1600)
                    } 1 {
                    /// @src 5:1614,1617
                    let _374 := var_i_1599
                    let _373 := increment_t_uint256(_374)
                    var_i_1599 := _373
                    let expr_1607 := _374
                }
                {
                    /// @src 5:1594,1595
                    let _375 := var_i_1599
                    let expr_1602 := _375
                    /// @src 5:1598,1605
                    let _376_mpos := var__owners_1567_mpos
                    let expr_1603_mpos := _376_mpos
                    /// @src 5:1598,1612
                    let expr_1604 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_1603_mpos)
                    /// @src 5:1594,1612
                    let expr_1605 := lt(cleanup_t_uint256(expr_1602), cleanup_t_uint256(expr_1604))
                    if iszero(expr_1605) { break }
                    /// @src 5:1694,1701
                    let _377_mpos := var__owners_1567_mpos
                    let expr_1611_mpos := _377_mpos
                    /// @src 5:1702,1703
                    let _378 := var_i_1599
                    let expr_1612 := _378
                    /// @src 5:1694,1704
                    let _379 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_1611_mpos, expr_1612))
                    let expr_1613 := _379
                    /// @src 5:1678,1704
                    let var_owner_1610 := expr_1613
                    /// @src 5:1726,1731
                    let _380 := var_owner_1610
                    let expr_1616 := _380
                    /// @src 5:1743,1744
                    let expr_1619 := 0x00
                    /// @src 5:1735,1745
                    let expr_1620 := convert_t_rational_0_by_1_to_t_address(expr_1619)
                    /// @src 5:1726,1745
                    let expr_1621 := iszero(eq(cleanup_t_address(expr_1616), cleanup_t_address(expr_1620)))
                    /// @src 5:1726,1773
                    let expr_1625 := expr_1621
                    if expr_1625 {
                        /// @src 5:1749,1754
                        let _381 := var_owner_1610
                        let expr_1622 := _381
                        /// @src 5:1758,1773
                        let expr_1623 := constant_SENTINEL_OWNERS_1555()
                        /// @src 5:1749,1773
                        let expr_1624 := iszero(eq(cleanup_t_address(expr_1622), cleanup_t_address(expr_1623)))
                        /// @src 5:1726,1773
                        expr_1625 := expr_1624
                    }
                    /// @src 5:1726,1799
                    let expr_1632 := expr_1625
                    if expr_1632 {
                        /// @src 5:1777,1782
                        let _382 := var_owner_1610
                        let expr_1626 := _382
                        /// @src 5:1794,1798
                        let expr_1629_address := address()
                        /// @src 5:1786,1799
                        let expr_1630 := convert_t_contract$_OwnerManager_$2044_to_t_address(expr_1629_address)
                        /// @src 5:1777,1799
                        let expr_1631 := iszero(eq(cleanup_t_address(expr_1626), cleanup_t_address(expr_1630)))
                        /// @src 5:1726,1799
                        expr_1632 := expr_1631
                    }
                    /// @src 5:1726,1824
                    let expr_1636 := expr_1632
                    if expr_1636 {
                        /// @src 5:1803,1815
                        let _383 := var_currentOwner_1595
                        let expr_1633 := _383
                        /// @src 5:1819,1824
                        let _384 := var_owner_1610
                        let expr_1634 := _384
                        /// @src 5:1803,1824
                        let expr_1635 := iszero(eq(cleanup_t_address(expr_1633), cleanup_t_address(expr_1634)))
                        /// @src 5:1726,1824
                        expr_1636 := expr_1635
                    }
                    /// @src 5:1718,1834
                    require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(expr_1636)
                    /// @src 5:1900,1906
                    let _385 := 0x02
                    let expr_1641 := _385
                    /// @src 5:1907,1912
                    let _386 := var_owner_1610
                    let expr_1642 := _386
                    /// @src 5:1900,1913
                    let _387 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1641,expr_1642)
                    let _388 := read_from_storage_split_offset_0_t_address(_387)
                    let expr_1643 := _388
                    /// @src 5:1925,1926
                    let expr_1646 := 0x00
                    /// @src 5:1917,1927
                    let expr_1647 := convert_t_rational_0_by_1_to_t_address(expr_1646)
                    /// @src 5:1900,1927
                    let expr_1648 := eq(cleanup_t_address(expr_1643), cleanup_t_address(expr_1647))
                    /// @src 5:1892,1937
                    require_helper_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(expr_1648)
                    /// @src 5:1974,1979
                    let _389 := var_owner_1610
                    let expr_1655 := _389
                    /// @src 5:1951,1957
                    let _390 := 0x02
                    let expr_1652 := _390
                    /// @src 5:1958,1970
                    let _391 := var_currentOwner_1595
                    let expr_1653 := _391
                    /// @src 5:1951,1971
                    let _392 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1652,expr_1653)
                    /// @src 5:1951,1979
                    update_storage_value_offset_0t_address_to_t_address(_392, expr_1655)
                    let expr_1656 := expr_1655
                    /// @src 5:2008,2013
                    let _393 := var_owner_1610
                    let expr_1659 := _393
                    /// @src 5:1993,2013
                    var_currentOwner_1595 := expr_1659
                    let expr_1660 := expr_1659
                }
                /// @src 5:2056,2071
                let expr_1667 := constant_SENTINEL_OWNERS_1555()
                /// @src 5:2033,2039
                let _394 := 0x02
                let expr_1664 := _394
                /// @src 5:2040,2052
                let _395 := var_currentOwner_1595
                let expr_1665 := _395
                /// @src 5:2033,2053
                let _396 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1664,expr_1665)
                /// @src 5:2033,2071
                update_storage_value_offset_0t_address_to_t_address(_396, expr_1667)
                let expr_1668 := expr_1667
                /// @src 5:2094,2101
                let _397_mpos := var__owners_1567_mpos
                let expr_1671_mpos := _397_mpos
                /// @src 5:2094,2108
                let expr_1672 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_1671_mpos)
                /// @src 5:2081,2108
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, expr_1672)
                let expr_1673 := expr_1672
                /// @src 5:2130,2140
                let _398 := var__threshold_1569
                let expr_1676 := _398
                /// @src 5:2118,2140
                update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_1676)
                let expr_1677 := expr_1676

            }

            function fun_setup_167(var__owners_106_offset, var__owners_106_length, var__threshold_108, var_to_110, var_data_112_offset, var_data_112_length, var_fallbackHandler_114, var_paymentToken_116, var_payment_118, var_paymentReceiver_120) {
                /// @src 0:4740,5891

                /// @src 0:5139,5150
                let expr_123_functionIdentifier := 1680
                /// @src 0:5151,5158
                let _2_offset := var__owners_106_offset
                let _2_length := var__owners_106_length
                let expr_124_offset := _2_offset
                let expr_124_length := _2_length
                /// @src 0:5160,5170
                let _3 := var__threshold_108
                let expr_125 := _3
                /// @src 0:5139,5171
                let _4_mpos := convert_array_t_array$_t_address_$dyn_calldata_ptr_to_t_array$_t_address_$dyn_memory_ptr(expr_124_offset, expr_124_length)
                fun_setupOwners_1680(_4_mpos, expr_125)
                /// @src 0:5185,5200
                let _5 := var_fallbackHandler_114
                let expr_128 := _5
                /// @src 0:5212,5213
                let expr_131 := 0x00
                /// @src 0:5204,5214
                let expr_132 := convert_t_rational_0_by_1_to_t_address(expr_131)
                /// @src 0:5185,5214
                let expr_133 := iszero(eq(cleanup_t_address(expr_128), cleanup_t_address(expr_132)))
                /// @src 0:5181,5259
                if expr_133 {
                    /// @src 0:5216,5242
                    let expr_134_functionIdentifier := 949
                    /// @src 0:5243,5258
                    let _6 := var_fallbackHandler_114
                    let expr_135 := _6
                    fun_internalSetFallbackHandler_949(expr_135)
                    /// @src 0:5181,5259
                }
                /// @src 0:5394,5406
                let expr_139_functionIdentifier := 1200
                /// @src 0:5407,5409
                let _7 := var_to_110
                let expr_140 := _7
                /// @src 0:5411,5415
                let _8_offset := var_data_112_offset
                let _8_length := var_data_112_length
                let expr_141_offset := _8_offset
                let expr_141_length := _8_length
                /// @src 0:5394,5416
                let _9_mpos := convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(expr_141_offset, expr_141_length)
                fun_setupModules_1200(expr_140, _9_mpos)
                /// @src 0:5431,5438
                let _10 := var_payment_118
                let expr_144 := _10
                /// @src 0:5441,5442
                let expr_145 := 0x00
                /// @src 0:5431,5442
                let expr_146 := gt(cleanup_t_uint256(expr_144), convert_t_rational_0_by_1_to_t_uint256(expr_145))
                /// @src 0:5427,5807
                if expr_146 {
                    /// @src 0:5737,5750
                    let expr_147_functionIdentifier := 462
                    /// @src 0:5751,5758
                    let _11 := var_payment_118
                    let expr_148 := _11
                    /// @src 0:5760,5761
                    let expr_149 := 0x00
                    /// @src 0:5763,5764
                    let expr_150 := 0x01
                    /// @src 0:5766,5778
                    let _12 := var_paymentToken_116
                    let expr_151 := _12
                    /// @src 0:5780,5795
                    let _13 := var_paymentReceiver_120
                    let expr_152 := _13
                    /// @src 0:5737,5796
                    let _14 := convert_t_rational_0_by_1_to_t_uint256(expr_149)
                    let _15 := convert_t_rational_1_by_1_to_t_uint256(expr_150)
                    let expr_153 := fun_handlePayment_462(expr_148, _14, _15, expr_151, expr_152)
                    /// @src 0:5427,5807
                }
                /// @src 0:5831,5841
                let expr_159 := caller()
                /// @src 0:5843,5850
                let _16_offset := var__owners_106_offset
                let _16_length := var__owners_106_length
                let expr_160_offset := _16_offset
                let expr_160_length := _16_length
                /// @src 0:5852,5862
                let _17 := var__threshold_108
                let expr_161 := _17
                /// @src 0:5864,5866
                let _18 := var_to_110
                let expr_162 := _18
                /// @src 0:5868,5883
                let _19 := var_fallbackHandler_114
                let expr_163 := _19
                /// @src 0:5821,5884
                let _20 := 0x141df868a6331af528e38c83b7aa03edc19be66e37ae67f9285bf4f8e3c6a1a8
                {
                    let _21 := allocate_unbounded()
                    let _22 := abi_encode_tuple_t_array$_t_address_$dyn_calldata_ptr_t_uint256_t_address_t_address__to_t_array$_t_address_$dyn_memory_ptr_t_uint256_t_address_t_address__fromStack(_21 , expr_160_offset, expr_160_length, expr_161, expr_162, expr_163)
                    log2(_21, sub(_22, _21) , _20, expr_159)
                }
            }

            function fun_signatureSplit_2112(var_signatures_2099_mpos, var_pos_2101) -> var_v_2104, var_r_2106, var_s_2108 {
                /// @src 10:947,1691
                /// @src 10:1032,1039
                let zero_t_uint8_530 := zero_value_for_split_t_uint8()
                var_v_2104 := zero_t_uint8_530
                /// @src 10:1041,1050
                let zero_t_bytes32_531 := zero_value_for_split_t_bytes32()
                var_r_2106 := zero_t_bytes32_531
                /// @src 10:1052,1061
                let zero_t_bytes32_532 := zero_value_for_split_t_bytes32()
                var_s_2108 := zero_t_bytes32_532

                /// @src 10:1129,1685
                {
                    let usr$signaturePos := mul(0x41, var_pos_2101)
                    var_r_2106 := mload(add(var_signatures_2099_mpos, add(usr$signaturePos, 0x20)))
                    var_s_2108 := mload(add(var_signatures_2099_mpos, add(usr$signaturePos, 0x40)))
                    var_v_2104 := and(mload(add(var_signatures_2099_mpos, add(usr$signaturePos, 0x41))), 0xff)
                }

            }

            function fun_simulateAndRevert_2167(var_targetContract_2160, var_calldataPayload_2162_mpos) {
                /// @src 12:1882,2368

                /// @src 12:2038,2362
                {
                    let usr$success := delegatecall(gas(), var_targetContract_2160, add(var_calldataPayload_2162_mpos, 0x20), mload(var_calldataPayload_2162_mpos), 0, 0)
                    mstore(0x00, usr$success)
                    mstore(0x20, returndatasize())
                    returndatacopy(0x40, 0, returndatasize())
                    revert(0, add(returndatasize(), 0x40))
                }

            }

            function fun_sub_2230(var_a_2208, var_b_2210) -> var__2213 {
                /// @src 13:1025,1170
                /// @src 13:1083,1090
                let zero_t_uint256_548 := zero_value_for_split_t_uint256()
                var__2213 := zero_t_uint256_548

                /// @src 13:1110,1111
                let _549 := var_b_2210
                let expr_2216 := _549
                /// @src 13:1115,1116
                let _550 := var_a_2208
                let expr_2217 := _550
                /// @src 13:1110,1116
                let expr_2218 := iszero(gt(cleanup_t_uint256(expr_2216), cleanup_t_uint256(expr_2217)))
                /// @src 13:1102,1117
                require_helper(expr_2218)
                /// @src 13:1139,1140
                let _551 := var_a_2208
                let expr_2223 := _551
                /// @src 13:1143,1144
                let _552 := var_b_2210
                let expr_2224 := _552
                /// @src 13:1139,1144
                let expr_2225 := checked_sub_t_uint256(expr_2223, expr_2224)

                /// @src 13:1127,1144
                let var_c_2222 := expr_2225
                /// @src 13:1162,1163
                let _553 := var_c_2222
                let expr_2227 := _553
                /// @src 13:1155,1163
                var__2213 := expr_2227
                leave

            }

            function fun_swapOwner_1930(var_prevOwner_1833, var_oldOwner_1835, var_newOwner_1837) {
                /// @src 5:4416,5212

                modifier_authorized_1840(var_prevOwner_1833, var_oldOwner_1835, var_newOwner_1837)
            }

            function fun_swapOwner_1930_inner(var_prevOwner_1833, var_oldOwner_1835, var_newOwner_1837) {
                /// @src 5:4416,5212

                /// @src 5:4600,4608
                let _452 := var_newOwner_1837
                let expr_1843 := _452
                /// @src 5:4620,4621
                let expr_1846 := 0x00
                /// @src 5:4612,4622
                let expr_1847 := convert_t_rational_0_by_1_to_t_address(expr_1846)
                /// @src 5:4600,4622
                let expr_1848 := iszero(eq(cleanup_t_address(expr_1843), cleanup_t_address(expr_1847)))
                /// @src 5:4600,4653
                let expr_1852 := expr_1848
                if expr_1852 {
                    /// @src 5:4626,4634
                    let _453 := var_newOwner_1837
                    let expr_1849 := _453
                    /// @src 5:4638,4653
                    let expr_1850 := constant_SENTINEL_OWNERS_1555()
                    /// @src 5:4626,4653
                    let expr_1851 := iszero(eq(cleanup_t_address(expr_1849), cleanup_t_address(expr_1850)))
                    /// @src 5:4600,4653
                    expr_1852 := expr_1851
                }
                /// @src 5:4600,4682
                let expr_1859 := expr_1852
                if expr_1859 {
                    /// @src 5:4657,4665
                    let _454 := var_newOwner_1837
                    let expr_1853 := _454
                    /// @src 5:4677,4681
                    let expr_1856_address := address()
                    /// @src 5:4669,4682
                    let expr_1857 := convert_t_contract$_OwnerManager_$2044_to_t_address(expr_1856_address)
                    /// @src 5:4657,4682
                    let expr_1858 := iszero(eq(cleanup_t_address(expr_1853), cleanup_t_address(expr_1857)))
                    /// @src 5:4600,4682
                    expr_1859 := expr_1858
                }
                /// @src 5:4592,4692
                require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(expr_1859)
                /// @src 5:4750,4756
                let _455 := 0x02
                let expr_1864 := _455
                /// @src 5:4757,4765
                let _456 := var_newOwner_1837
                let expr_1865 := _456
                /// @src 5:4750,4766
                let _457 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1864,expr_1865)
                let _458 := read_from_storage_split_offset_0_t_address(_457)
                let expr_1866 := _458
                /// @src 5:4778,4779
                let expr_1869 := 0x00
                /// @src 5:4770,4780
                let expr_1870 := convert_t_rational_0_by_1_to_t_address(expr_1869)
                /// @src 5:4750,4780
                let expr_1871 := eq(cleanup_t_address(expr_1866), cleanup_t_address(expr_1870))
                /// @src 5:4742,4790
                require_helper_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(expr_1871)
                /// @src 5:4891,4899
                let _459 := var_oldOwner_1835
                let expr_1876 := _459
                /// @src 5:4911,4912
                let expr_1879 := 0x00
                /// @src 5:4903,4913
                let expr_1880 := convert_t_rational_0_by_1_to_t_address(expr_1879)
                /// @src 5:4891,4913
                let expr_1881 := iszero(eq(cleanup_t_address(expr_1876), cleanup_t_address(expr_1880)))
                /// @src 5:4891,4944
                let expr_1885 := expr_1881
                if expr_1885 {
                    /// @src 5:4917,4925
                    let _460 := var_oldOwner_1835
                    let expr_1882 := _460
                    /// @src 5:4929,4944
                    let expr_1883 := constant_SENTINEL_OWNERS_1555()
                    /// @src 5:4917,4944
                    let expr_1884 := iszero(eq(cleanup_t_address(expr_1882), cleanup_t_address(expr_1883)))
                    /// @src 5:4891,4944
                    expr_1885 := expr_1884
                }
                /// @src 5:4883,4954
                require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(expr_1885)
                /// @src 5:4972,4978
                let _461 := 0x02
                let expr_1890 := _461
                /// @src 5:4979,4988
                let _462 := var_prevOwner_1833
                let expr_1891 := _462
                /// @src 5:4972,4989
                let _463 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1890,expr_1891)
                let _464 := read_from_storage_split_offset_0_t_address(_463)
                let expr_1892 := _464
                /// @src 5:4993,5001
                let _465 := var_oldOwner_1835
                let expr_1893 := _465
                /// @src 5:4972,5001
                let expr_1894 := eq(cleanup_t_address(expr_1892), cleanup_t_address(expr_1893))
                /// @src 5:4964,5011
                require_helper_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39(expr_1894)
                /// @src 5:5040,5046
                let _466 := 0x02
                let expr_1901 := _466
                /// @src 5:5047,5055
                let _467 := var_oldOwner_1835
                let expr_1902 := _467
                /// @src 5:5040,5056
                let _468 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1901,expr_1902)
                let _469 := read_from_storage_split_offset_0_t_address(_468)
                let expr_1903 := _469
                /// @src 5:5021,5027
                let _470 := 0x02
                let expr_1898 := _470
                /// @src 5:5028,5036
                let _471 := var_newOwner_1837
                let expr_1899 := _471
                /// @src 5:5021,5037
                let _472 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1898,expr_1899)
                /// @src 5:5021,5056
                update_storage_value_offset_0t_address_to_t_address(_472, expr_1903)
                let expr_1904 := expr_1903
                /// @src 5:5086,5094
                let _473 := var_newOwner_1837
                let expr_1909 := _473
                /// @src 5:5066,5072
                let _474 := 0x02
                let expr_1906 := _474
                /// @src 5:5073,5082
                let _475 := var_prevOwner_1833
                let expr_1907 := _475
                /// @src 5:5066,5083
                let _476 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1906,expr_1907)
                /// @src 5:5066,5094
                update_storage_value_offset_0t_address_to_t_address(_476, expr_1909)
                let expr_1910 := expr_1909
                /// @src 5:5131,5132
                let expr_1917 := 0x00
                /// @src 5:5123,5133
                let expr_1918 := convert_t_rational_0_by_1_to_t_address(expr_1917)
                /// @src 5:5104,5110
                let _477 := 0x02
                let expr_1912 := _477
                /// @src 5:5111,5119
                let _478 := var_oldOwner_1835
                let expr_1913 := _478
                /// @src 5:5104,5120
                let _479 := mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(expr_1912,expr_1913)
                /// @src 5:5104,5133
                update_storage_value_offset_0t_address_to_t_address(_479, expr_1918)
                let expr_1919 := expr_1918
                /// @src 5:5161,5169
                let _480 := var_oldOwner_1835
                let expr_1922 := _480
                /// @src 5:5148,5170
                let _481 := 0xf8d49fc529812e9a7c5c50e69c20f0dccc0db8fa95c98bc58cc9a4f1c1299eaf
                {
                    let _482 := allocate_unbounded()
                    let _483 := abi_encode_tuple__to__fromStack(_482 )
                    log2(_482, sub(_483, _482) , _481, expr_1922)
                }/// @src 5:5196,5204
                let _484 := var_newOwner_1837
                let expr_1926 := _484
                /// @src 5:5185,5205
                let _485 := 0x9465fa0c962cc76958e6373a993326400c1c94f8be2fe3a952adfa7f60b2ea26
                {
                    let _486 := allocate_unbounded()
                    let _487 := abi_encode_tuple__to__fromStack(_486 )
                    log2(_486, sub(_487, _486) , _485, expr_1926)
                }
            }

            function fun_transferToken_2092(var_token_2072, var_receiver_2074, var_amount_2076) -> var_transferred_2079 {
                /// @src 8:763,1667
                /// @src 8:853,869
                let zero_t_bool_524 := zero_value_for_split_t_bool()
                var_transferred_2079 := zero_t_bool_524

                /// @src 8:985,995
                let expr_2085 := 0xa9059cbb
                /// @src 8:997,1005
                let _525 := var_receiver_2074
                let expr_2086 := _525
                /// @src 8:1007,1013
                let _526 := var_amount_2076
                let expr_2087 := _526
                /// @src 8:962,1014
                let _527 := convert_t_rational_2835717307_by_1_to_t_bytes4(expr_2085)

                let expr_2088_mpos := allocate_unbounded()
                let _528 := add(expr_2088_mpos, 0x20)

                mstore(_528, _527)
                _528 := add(_528, 4)

                let _529 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(_528, expr_2086, expr_2087)
                mstore(expr_2088_mpos, sub(_529, add(expr_2088_mpos, 0x20)))
                finalize_allocation(expr_2088_mpos, sub(_529, expr_2088_mpos))
                /// @src 8:942,1014
                let var_data_2082_mpos := expr_2088_mpos
                /// @src 8:1080,1661
                {
                    let usr$success := call(sub(gas(), 10000), var_token_2072, 0, add(var_data_2082_mpos, 0x20), mload(var_data_2082_mpos), 0, 0x20)
                    switch returndatasize()
                    case 0 {
                        var_transferred_2079 := usr$success
                    }
                    case 0x20 {
                        var_transferred_2079 := iszero(or(iszero(usr$success), iszero(mload(0))))
                    }
                    default { var_transferred_2079 := 0 }
                }

            }

            function getter_fun_VERSION_39() -> ret_0 {
                /// @src 0:2205,2245
                ret_0 := constant_VERSION_39()
            }

            function getter_fun_approvedHashes_94(key_0, key_1) -> ret {
                /// @src 0:3521,3590

                let slot := 8
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_bytes32_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function getter_fun_nonce_82() -> ret {
                /// @src 0:3188,3208

                let slot := 5
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function getter_fun_signedMessages_88(key_0) -> ret {
                /// @src 0:3360,3409

                let slot := 7
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function leftAlign_t_bytes1(value) -> aligned {
                aligned := value
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function mapping_index_access_t_mapping$_t_address_$_t_address_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_bytes32_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_address_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function modifier_authorized_1059(var_guard_1056) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_setGuard_1092_inner(var_guard_1056)

            }

            function modifier_authorized_1206(var_module_1203) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_enableModule_1253_inner(var_module_1203)

            }

            function modifier_authorized_1261(var_prevModule_1256, var_module_1258) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_disableModule_1308_inner(var_prevModule_1256, var_module_1258)

            }

            function modifier_authorized_1688(var_owner_1683, var__threshold_1685) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_addOwnerWithThreshold_1753_inner(var_owner_1683, var__threshold_1685)

            }

            function modifier_authorized_1763(var_prevOwner_1756, var_owner_1758, var__threshold_1760) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_removeOwner_1830_inner(var_prevOwner_1756, var_owner_1758, var__threshold_1760)

            }

            function modifier_authorized_1840(var_prevOwner_1833, var_oldOwner_1835, var_newOwner_1837) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_swapOwner_1930_inner(var_prevOwner_1833, var_oldOwner_1835, var_newOwner_1837)

            }

            function modifier_authorized_1936(var__threshold_1933) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_changeThreshold_1961_inner(var__threshold_1933)

            }

            function modifier_authorized_955(var_handler_952) {
                /// @src 9:356,540

                /// @src 9:505,520
                let expr_2313_functionIdentifier := 2311
                fun_requireSelfCall_2311()
                /// @src 9:532,533
                fun_setFallbackHandler_966_inner(var_handler_952)

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function panic_error_0x21() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x21)
                revert(0, 0x24)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function require_helper_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function store_literal_in_memory_00aecc0fa22d38afc0f465808a9fee188ba139fb53b2ca550ea01d91d6ecf29f(memPtr) {

                mstore(add(memPtr, 0), "GS023")

            }

            function store_literal_in_memory_14032cc06a7a2043c1b961d6b7d6cbfaea1511224ce5ca723af49fa68e55c159(memPtr) {

                mstore(add(memPtr, 0), "GS026")

            }

            function store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(memPtr) {

                mstore(add(memPtr, 0), 0x19457468657265756d205369676e6564204d6573736167653a0a333200000000)

            }

            function store_literal_in_memory_1d9dfad0f7e80ccb3a898324566cbd9ed8451678d229622c4c1b5f1f19330139(memPtr) {

                mstore(add(memPtr, 0), "GS024")

            }

            function store_literal_in_memory_21e9127eafd366d4171d9c7f3375ca996507e4dd231bd2c13b243a626f992d4c(memPtr) {

                mstore(add(memPtr, 0), "GS105")

            }

            function store_literal_in_memory_26b7fa7d947085035b53de5c25693e568c405e1e894ad22389a1528045f35ba8(memPtr) {

                mstore(add(memPtr, 0), "GS030")

            }

            function store_literal_in_memory_2ed3cfd606bc0ca63de16ac40539251d9539eb77db0a0d075dd487d4cf1c74c7(memPtr) {

                mstore(add(memPtr, 0), "GS201")

            }

            function store_literal_in_memory_372498b513e17609439d064ce0277017b054c808f722c83ff57cee4e06a9e457(memPtr) {

                mstore(add(memPtr, 0), "GS022")

            }

            function store_literal_in_memory_3a328c389014707497c45ecba7527a678d30fabfd6868fe8bade352062f7774b(memPtr) {

                mstore(add(memPtr, 0), "GS200")

            }

            function store_literal_in_memory_3be12fd8170783d77e95b898996a64d9da524b4d1491db467a4cf43987cf214d(memPtr) {

                mstore(add(memPtr, 0), "GS106")

            }

            function store_literal_in_memory_3d415fb64f163720f719509288c33af2675ad2c80f86a95800d94f19c802a300(memPtr) {

                mstore(add(memPtr, 0), "GS203")

            }

            function store_literal_in_memory_3fdb21530a98d914fa570cd548d7a3608c11195b5a11ec44ecd149309d9dcced(memPtr) {

                mstore(add(memPtr, 0), "GS000")

            }

            function store_literal_in_memory_4353e9bcd8ea99b4d56990ac4b8777f1ab67cada8356790f30e482f2408a44b0(memPtr) {

                mstore(add(memPtr, 0), "GS011")

            }

            function store_literal_in_memory_6815e8af672f0836acc6449b9d3a4cb88965a5b47ac95c5e5335f73ab586c8d0(memPtr) {

                mstore(add(memPtr, 0), "GS002")

            }

            function store_literal_in_memory_7015c1a48403d132ad83884b326109f1b309c42f752b2abd1db79522ee074673(memPtr) {

                mstore(add(memPtr, 0), "1.4.1")

            }

            function store_literal_in_memory_71cf63766ccc857998a36e6f1707e507e2e8921214ba4b8df65713cc885a8888(memPtr) {

                mstore(add(memPtr, 0), "GS027")

            }

            function store_literal_in_memory_7295c339622429fbd8194417b44c0a2c972675caa6bf424cf588d99024c608be(memPtr) {

                mstore(add(memPtr, 0), "GS103")

            }

            function store_literal_in_memory_74edef16877c9a34a97f281dbea2805f9198008e7df330ab6416449a66143b07(memPtr) {

                mstore(add(memPtr, 0), "GS012")

            }

            function store_literal_in_memory_8c9c6f726a0896ef73f47c5bcc7192641db350a8b0b2e1f61e0f0c694ec59426(memPtr) {

                mstore(add(memPtr, 0), "GS100")

            }

            function store_literal_in_memory_93293a4a2e4cde533ea81b8912d8934c2d7892ceb975e9ad2c25f4abf449a730(memPtr) {

                mstore(add(memPtr, 0), "GS001")

            }

            function store_literal_in_memory_99333b4627cde46d9c53d7148b33b8b1f4f065f5dceb2cb210893e67e551978e(memPtr) {

                mstore(add(memPtr, 0), "GS013")

            }

            function store_literal_in_memory_9d970fd9adbe3047cd5b7a20406b6bf2e613338cfe3a19aca4ca1810b67fad10(memPtr) {

                mstore(add(memPtr, 0), "GS010")

            }

            function store_literal_in_memory_a5f8340ff5526fa73c9197322cd5a1c742b87b5fdfeb41a9c278b80dab01159b(memPtr) {

                mstore(add(memPtr, 0), "GS202")

            }

            function store_literal_in_memory_b44c13dad2cf265cdd10f957c112238232519dfdaff7245a6824a63db294cf23(memPtr) {

                mstore(add(memPtr, 0), "GS104")

            }

            function store_literal_in_memory_b7248be3e8887f14d79f63d350787adcdb5e12b47898ebd6ef2aacf660fc9f17(memPtr) {

                mstore(add(memPtr, 0), "GS031")

            }

            function store_literal_in_memory_bc2491dc7fc5c71a630e01bcb9c3e39f61f559ab54f6528d2adb67d65ed9ff6b(memPtr) {

                mstore(add(memPtr, 0), "GS025")

            }

            function store_literal_in_memory_bd322b68614692ef7b503763b6ccedf066a7ae3f91196a908df3c549d078f597(memPtr) {

                mstore(add(memPtr, 0), "GS204")

            }

            function store_literal_in_memory_bfe16ebc2bd5d2fdfe588255b31e648718f9ede037848519acb772cd4f042f12(memPtr) {

                mstore(add(memPtr, 0), "GS102")

            }

            function store_literal_in_memory_c2a4c0da6073a4ef35f113e24388fa780c351ad02fefd784ffba62884174edf0(memPtr) {

                mstore(add(memPtr, 0), "GS300")

            }

            function store_literal_in_memory_d153a9d5a0d4e2c2b7d4e887f02c1da6287d6d54f20f4d8ce40382a23140787a(memPtr) {

                mstore(add(memPtr, 0), "GS021")

            }

            function store_literal_in_memory_eab5e6af6960e6bb32b59bfd1d877c9c1728e4c18fa7a83eb40baa1c0f05f61f(memPtr) {

                mstore(add(memPtr, 0), "GS101")

            }

            function store_literal_in_memory_f27dba96666375fe844b71e8ea4f388db2ce9f87fa9882d36a17036a7478b232(memPtr) {

                mstore(add(memPtr, 0), "GS020")

            }

            function store_literal_in_memory_f31aea2d758c1bc976ea4b6db8005af34a1f6d8fd0cba0d31e0228d78d6a5ae2(memPtr) {

                mstore(add(memPtr, 0), "GS400")

            }

            function store_literal_in_memory_f86d3c4b40d399421f213105cf28bb5b688028c0e3d9bd9eb6f879f0bebe6c39(memPtr) {

                mstore(add(memPtr, 0), "GS205")

            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function validator_assert_t_enum$_Operation_$2325(value) {
                if iszero(lt(value, 2)) { panic_error_0x21() }
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_address_payable(value) {
                if iszero(eq(value, cleanup_t_address_payable(value))) { revert(0, 0) }
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function validator_revert_t_bytes4(value) {
                if iszero(eq(value, cleanup_t_bytes4(value))) { revert(0, 0) }
            }

            function validator_revert_t_enum$_Operation_$2325(value) {
                if iszero(lt(value, 2)) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function zero_memory_chunk_t_address(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_array$_t_address_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

        }

        data ".metadata" hex"a2646970667358221220a4c1923d33b92a1bdbcf1b9de00cdabba4aea6a32a98b54b4c3cd7b35b188f8364736f6c63430008060033"
    }

}


IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:

IR:
/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "SafeMath_2274" {
    code {
        /// @src 13:190,1753
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeMath_2274_deployed"), datasize("SafeMath_2274_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeMath_2274_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function constructor_SafeMath_2274() {

            /// @src 13:190,1753

        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

    }
    object "SafeMath_2274_deployed" {
        code {
            /// @src 13:190,1753
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                default {}
            }
            if iszero(calldatasize()) {  }
            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

        }

        data ".metadata" hex"a2646970667358221220c49ff52db18b5627b3ab689125633bf63bd2a503746df89693bd120f8704206964736f6c63430008060033"
    }

}


IR:

IR:

IR:
/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "ISignatureValidatorConstants_2280" {
    code {
        /// @src 15:75,236
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_ISignatureValidatorConstants_2280()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ISignatureValidatorConstants_2280_deployed"), datasize("ISignatureValidatorConstants_2280_deployed"))

        return(_1, datasize("ISignatureValidatorConstants_2280_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function constructor_ISignatureValidatorConstants_2280() {

            /// @src 15:75,236

        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

    }
    object "ISignatureValidatorConstants_2280_deployed" {
        code {
            /// @src 15:75,236
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                default {}
            }
            if iszero(calldatasize()) {  }
            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

        }

        data ".metadata" hex"a2646970667358221220412a596fa09b36a14a20c41d3242394ff340f671f2d3aae0f05b50245bb8e1da64736f6c63430008060033"
    }

}


