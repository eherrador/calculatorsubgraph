import {
  Add as AddEvent,
  Divide as DivideEvent,
  Multiplication as MultiplicationEvent,
  Substraction as SubstractionEvent
} from "../generated/Calculator/Calculator"
import { Add, Divide, Multiplication, Substraction } from "../generated/schema"

export function handleAdd(event: AddEvent): void {
  let entity = new Add(
    event.transaction.hash.toHex() + "-" + event.logIndex.toString()
  )
  entity.num1 = event.params.num1
  entity.num2 = event.params.num2
  entity.result = event.params.result
  entity.save()
}

export function handleDivide(event: DivideEvent): void {
  let entity = new Divide(
    event.transaction.hash.toHex() + "-" + event.logIndex.toString()
  )
  entity.num1 = event.params.num1
  entity.num2 = event.params.num2
  entity.result = event.params.result
  entity.save()
}

export function handleMultiplication(event: MultiplicationEvent): void {
  let entity = new Multiplication(
    event.transaction.hash.toHex() + "-" + event.logIndex.toString()
  )
  entity.num1 = event.params.num1
  entity.num2 = event.params.num2
  entity.result = event.params.result
  entity.save()
}

export function handleSubstraction(event: SubstractionEvent): void {
  let entity = new Substraction(
    event.transaction.hash.toHex() + "-" + event.logIndex.toString()
  )
  entity.num1 = event.params.num1
  entity.num2 = event.params.num2
  entity.result = event.params.result
  entity.save()
}
