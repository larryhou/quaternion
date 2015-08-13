// axisX:𝜙	= atan2(2*(w*x+y*z),1-2*(x*x+y*y))
// axisY:𝜃	= asin(2*(w*y-z*x))
// axisZ:𝜓	= atan2(2*(w*z+x*y),1-2*(y*y+z*z))

func convertQuaternionToEuler(quat:CMQuaternion) -> (pitch:Double, roll:Double, yaw:Double)
{
    let x = atan2(2 * (quat.w * quat.x + quat.y * quat.z), 1 - 2 * (quat.x * quat.x + quat.y * quat.y))
    let y =  asin(2 * (quat.w * quat.y - quat.z * quat.x))
    let z = atan2(2 * (quat.w * quat.z + quat.x * quat.y), 1 - 2 * (quat.y * quat.y + quat.z * quat.z))
    return (x, y, z)
}
