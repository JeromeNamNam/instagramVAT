// a placer dans le répertoire  /usr/local/bin
// et lui donner le chmod 755 $chmod 755 mon fichier
use std::fs::File;
use std::io::prelude::*;
use std::io::{self, Write};
use std::env;

#[derive(PartialEq)]
enum Status{Inside, Outside}

const ASCII_SPACE: u8 = 0x20; // ascii char: SPACE
const ASCII_TAB:   u8 = 0x09; // ascii char: TAB
const ASCII_QUOT:  u8 = 0x22; // ascii char: QUOT


// If we see ASCII_QUOT then reverse status.
// Otherwise, status is unchanged.
fn handle_status(status: Status, byte: u8) -> Status {
    match byte {
        ASCII_QUOT => {
            match status {
                Status::Outside => Status::Inside,
                Status::Inside => Status::Outside,
            }
        }
        _ => status,
    }
}


fn main() {
    
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        println!("Usage: {} <file>", args[0]);
    }
    
    let file_path = &args[1];
    let file = File::open(file_path).expect("cannot read open {}");

    let mut status = Status::Outside;
    let mut count = 0;
    for byte in file.bytes() {
        count = count + 1;
        match byte {
            Ok(byte) => {
                status = handle_status(status, byte);
                if status == Status::Inside && byte == ASCII_TAB {
                    io::stdout().write(&[ASCII_SPACE]).expect("c08fb876 - cannot write to STDOUT");
                    continue;
                }
                io::stdout().write(&[byte]).expect("b32a183e - cannot write to STDOUT");
            }
            Err(e) => {
                eprint!("Skipping byte {} - maybe malformed UTF-8?\n{}", count, e);
            }
        }
    }
}
