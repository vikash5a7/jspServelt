package com.BridgeLabz.OOPS.Clinic;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.bridgeLabz.util.Utility;

public class ServicesImpl {
	Doctor doctor = new Doctor();
	private String DOCTOR_PATH = "doctor.json";
	private String PATIENT_PATH = "patient.json";
	private String APPOINTMENT_PATH = "appoint.json";
	JSONArray jsonArray = new JSONArray();
	JSONObject jsonObject = new JSONObject();
	Controller controller = new Controller();

	@SuppressWarnings("unchecked")
	public void addDoctor() {

		jsonArray = UtilityClinic.readData(DOCTOR_PATH);

		Doctor doctorDetails = new Doctor();
		System.out.println("Enter Doctor Name");
		String doctorName = Utility.inputNames();
		if (Utility.isStringOnlyAlphabet(doctorName)) {
			doctorDetails.setName(doctorName);
		}

		System.out.println("Enter Doctor Specialization");
		String specialization = Utility.inputString();
		if (Utility.isStringOnlyAlphabet(specialization)) {
			doctorDetails.setSpecilization(specialization);
		}

		System.out.println("Enter Doctor Availability");
		String availability = Utility.inputString();
		if (Utility.isStringOnlyAlphabet(availability)) {
			doctorDetails.setAvailability(availability);
		}

		doctorDetails.setId(Utility.doctorId());
		doctorDetails.setNumberOfPatients(0);

		jsonObject.put("Id", doctorDetails.getId());
		jsonObject.put("Name", doctorDetails.getName());
		jsonObject.put("Specialization", doctorDetails.getSpecilization());
		jsonObject.put("Availability", doctorDetails.getAvailability());
		jsonObject.put("Patients", doctorDetails.getNumberOfPatients());

		jsonArray.add(jsonObject);

		System.out.println(jsonArray);
		UtilityClinic.writeData(DOCTOR_PATH, jsonArray);

	}

	@SuppressWarnings("unchecked")
	public void addPatients(String id, String doctorId) {

		JSONArray jsonArray = UtilityClinic.readData(PATIENT_PATH);

		Patient patientDetails = new Patient();
		System.out.println("Enter Patient Name");
		String patientName = Utility.inputString();
		if (Utility.isStringOnlyAlphabet(patientName)) {
			patientDetails.setName(patientName);
		}

		System.out.println("Enter Mobile Number");
		String mobile = Utility.inputString();
		if (Utility.mobileNumberValidator(mobile)) {
			patientDetails.setMobile(Double.parseDouble(mobile));
		}

		System.out.println("Enter Age");
		int age = Utility.inputInteger();
		patientDetails.setAge(age);

		patientDetails.setID(Utility.patientId());

		jsonObject.put("Id", patientDetails.getID());
		jsonObject.put("Name", patientDetails.getName());
		jsonObject.put("Mobile", patientDetails.getMobile());
		jsonObject.put("Age", patientDetails.getAge());
		jsonObject.put("Doctor Id", doctorId);

		jsonArray.add(jsonObject);
		// System.out.println(jsonArray);
		UtilityClinic.writeData(PATIENT_PATH, jsonArray);
	}

	/** Reads doctor's data from json file **/
	@SuppressWarnings("rawtypes")
	public void readDoctorData(String key, String value, String choice) {

		jsonArray = (JSONArray) UtilityClinic.readData(DOCTOR_PATH);

		Iterator iterator = jsonArray.iterator();

		JSONObject jsonObject, lastJasonObject = null;

		while (iterator.hasNext()) {

			if ((jsonObject = (JSONObject) iterator.next()).get(key).equals(value)) {
				lastJasonObject = jsonObject;
				System.out.println("\nDoctor Information:");
				System.out.println("ID: " + jsonObject.get("Id") + "\t");
				System.out.println("Name: " + jsonObject.get("Name") + "\t");
				System.out.println("Specialization: " + jsonObject.get("Specialization") + "\t");
				System.out.println("Availability: " + jsonObject.get("Availability") + "\t");
				System.out.println("Number of Patients: " + jsonObject.get("Patients") + "\n");

				// asks user if want to take an appointment
				System.out.println("Do you want to take an appointment?[y/n]");
				String response = Utility.inputString().toLowerCase();
				if (response.equals("y")) {
					makeAppointment(lastJasonObject);
				} else {
					Controller.mainController();
				}
			}
		}
		System.out.println("Enter valid Doctor " + key);
		Controller.doctorSearchBy(choice);
	}

	@SuppressWarnings("unchecked")
	public void makeAppointment(JSONObject doctorJsonObject) {
		String patientId = "";
		String doctorId = (String) doctorJsonObject.get("Id");
		long patients = (long) doctorJsonObject.get("Patients");
		if (patients >= 5) { // doctor is busy
			System.out.println(
					"Sorry!!! Doctor Not available for today. Do you want to take an appointment tomorrow[y/n]");
			// current date
			LocalDate today = LocalDate.now();

			// adding one day to the localdate
			LocalDate tomorrow = today.plusDays(1);
			DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy");

			String date = tomorrow.format(format);

			// System.out.println("Tomorrow's Date: "+dateTime);
			String response = Utility.inputString().toString();
			if (response.equals("y")) {

				JSONArray jsonArray = UtilityClinic.readData(APPOINTMENT_PATH);
				JSONObject jsonObject = new JSONObject();
				patientId = Utility.patientId();
				jsonObject.put("DoctorId", doctorId);
				jsonObject.put("PatientId", patientId);
				jsonObject.put("AppointmentDate", date);
				int count = 1;
				jsonObject.put("Total Patient", count++);

				jsonArray.add(jsonObject);
				System.out.println();

				UtilityClinic.writeData(APPOINTMENT_PATH, jsonArray);
				System.out.println("Congratulation You got an appointment on " + date + ". Your Patient ID is "
						+ patientId + "\n");
				Controller.mainController();
			} else {
				Controller.mainController();
			}

		}
		// doctor is not busy. Increases number of patients and updates json file
		else {
			LocalDate today = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			patientId = Utility.patientId();
			// updates patient json file
			addPatients(patientId, doctorId);

			doctorJsonObject.put("Patients", patients + 1);
			updateDoctorData(doctorJsonObject);
			JSONObject jsonObject = new JSONObject();
			patientId = Utility.patientId();
			jsonObject.put("DoctorId", doctorId);
			jsonObject.put("PatientId", patientId);
			jsonObject.put("AppointmentTime", dtf.format(now));
			jsonObject.put("AppointmentDate", today);
			jsonArray.add(jsonObject);
			System.out.println();
			UtilityClinic.writeData(APPOINTMENT_PATH, jsonArray);
			System.out.println(
					"Congratulation You got an appointment on " + today + " Your Patient ID is " + patientId + "\n");
			Controller.mainController();
		}

	}

	@SuppressWarnings("unchecked")
	private void updateDoctorData(JSONObject doctorJsonObject) {

		jsonArray = UtilityClinic.readData(DOCTOR_PATH);

		JSONArray updatedArray = new JSONArray(); // new array with updated elements
		@SuppressWarnings("rawtypes")
		Iterator iterator = jsonArray.iterator();

		// iterates over array
		while (iterator.hasNext()) {
			JSONObject object = (JSONObject) iterator.next();
			if (object.get("Id").equals(doctorJsonObject.get("Id"))) {
				updatedArray.add(doctorJsonObject);
			} else {
				updatedArray.add(object);
			}
		}

		UtilityClinic.writeData(DOCTOR_PATH, updatedArray);

	}

	public void readPatientData(String key, String value) {
		jsonArray = UtilityClinic.readData(PATIENT_PATH);
		@SuppressWarnings("rawtypes")
		Iterator iterator = jsonArray.iterator();
		JSONObject jsonObject;

		while (iterator.hasNext()) {
			if ((jsonObject = (JSONObject) iterator.next()).containsValue(value)) {
				System.out.println("\nPatient Information:");
				System.out.println("ID: " + jsonObject.get("Id") + "\t");
				System.out.println("Name: " + jsonObject.get("Name") + "\t");
				System.out.println("Mobile Number: " + jsonObject.get("Mobile") + "\t");
				System.out.println("Age: " + jsonObject.get("Age") + "\n");
			}
		}
		Controller.mainController();
	}

}
