#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include <map>
using namespace llvm;

using namespace llvm;

//#define DEBUG_TYPE "myfunctionpass"
#define DEBUG_TYPE "opcodeCounter"


namespace {
    struct CountOpcode : public FunctionPass {
        std::map<std::string, int> opcodeCounter;
        static char ID;

        CountOpcode() : FunctionPass(ID) {}

        //counting number of opcodes used in a function
        virtual bool runOnFunction(Function &F) {
            llvm::outs() << "Function " << F.getName() << '\n';
            for (Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) { // iterates over BBs of the function
                for (BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) { // iterates over lines inside a BB

                    if (opcodeCounter.find(i->getOpcodeName()) == opcodeCounter.end()) { // opcode didn't exit and now is added to the end of the map
                        opcodeCounter[i->getOpcodeName()] = 1;

                    } else {
                        opcodeCounter[i->getOpcodeName()] += 1;
                    }
                }
            }

            std::map<std::string, int>::iterator i = opcodeCounter.begin();
            std::map<std::string, int>::iterator e = opcodeCounter.end();
            while (i != e) {
                llvm::outs() << i->first << ": " << i->second << "\n";
                i++;
            }
            llvm::outs() << "\n";
            opcodeCounter.clear();
            return false;
        }
    };
}

char CountOpcode::ID = 0;
static RegisterPass<CountOpcode> X("opcodeCounter", "Count number of opcode in a functions");

