import HomeNavbar from '@/components/HomeNavbar.vue';
import TableData from '@/components/table-data.vue';
import ModalDetail from '@/components/ModalDetail.vue';
import BackButton from '@/components/BackButton.vue';
import {DataTables} from './TableHelper.js'


// import ModalConfirm from '../../components/ModalConfirm.vue';
import { onMounted ,ref, reactive, inject} from 'vue';
import { defineComponent  } from 'vue';
import { useRouter} from 'vue-router';
import {  ActionRouteToCreate, ActionViewDetail,ActionUpdate,ActionDelete} from '@/data/actionData'
import {$toast} from '@/plugins/notifHelper.js'



export{
    HomeNavbar, TableData,ModalDetail, onMounted, ref, reactive , inject , defineComponent
    ,useRouter, ActionRouteToCreate , ActionViewDetail, ActionUpdate , ActionDelete, $toast
    ,BackButton, DataTables
}