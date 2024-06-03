#[starknet::contract]
mod Counter {
    #[storage]
    struct Storage {
        counter: u32, 
    }

    #[constructor]
    fn constructor(ref self: ContractState, input: u32) {
        self.counter.write(input);
    }
}