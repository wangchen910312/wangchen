package chn.bhmc.dms.bat.sal.veh.web;

import javax.annotation.Resource;

import able.com.web.HController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import chn.bhmc.dms.bat.sal.veh.service.BatchVehRfidResetService;

@Controller
public class BatchVehRfidResetTestController extends HController {

    @Resource(name="batchVehRfidResetService")
    BatchVehRfidResetService batchVehRfidResetService;

    @RequestMapping(value = "/bat/sal/veh/batCallVehRfidResetProcess.do", method = RequestMethod.GET)
    @ResponseBody

    public int batCallStkJoinProcess() throws Exception {

        batchVehRfidResetService.callVehRfidResetProcess();

        return 1;

    }

}