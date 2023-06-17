import webapi from "./gocliRequest"
import * as components from "./testComponents"
export * from "./testComponents"

/**
 * @description 
 */
export function getUser() {
	return webapi.get<components.Response>(`/users/id/${userId}`)
}

/**
 * @description 
 */
export function createUser() {
	return webapi.post<null>(`/users/create`)
}
